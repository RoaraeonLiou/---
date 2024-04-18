create function class_report( @major varchar(20), @class_id varchar(4))
RETURNS @returntable TABLE
(       
	course_id varchar(8),	--课程号
	title	varchar(50),	--课程名
	max_score		numeric(3,0),	--最高分
	mean	numeric(3,0),	--平均分
	fail	int				--不及格人数
)
AS
BEGIN
    declare cur cursor for(
		select class_section.course_id, title, class_section.sec_id, class_section.semester, class_section.year
		from class_section join section on ( 
				class_section.course_id = section.course_id and
				class_section.sec_id = section.sec_id and
				class_section.semester = section.semester and
				class_section.year = section.year
			)join course on (class_section.course_id = course.course_id)
		where class_section.major_name = @major and class_section.class_id = @class_id
	);
	
    declare @c_id varchar(8);
	declare @title varchar(50);
	declare @sec_id varchar(8);
	declare @semester varchar(6);
	declare @year numeric(4,0);
	declare @max numeric(3,0);
	declare @mean numeric(3,0);
	declare @fail int;

	open cur;	--打开游标
	fetch next from cur into @c_id,@title,@sec_id,@semester,@year;
	while @@FETCH_STATUS = 0
        begin
			select @max = (
				select max(grade) 
				from takes join student on (takes.ID = student.ID)
				where takes.course_id = @c_id and
					takes.sec_id = @sec_id and
					takes.semester = @semester and
					takes.year = @year and
					student.major_name = @major and
					student.class_id = @class_id
				)
			select @mean = (
				select avg(grade) 
				from takes join student on (takes.ID = student.ID)
				where takes.course_id = @c_id and
					takes.sec_id = @sec_id and
					takes.semester = @semester and
					takes.year = @year and
					student.major_name = @major and
					student.class_id = @class_id
				)
			select @fail = (
				select count(*) 
				from takes join student on (takes.ID = student.ID)
				where takes.course_id = @c_id and
					takes.sec_id = @sec_id and
					takes.semester = @semester and
					takes.year = @year and
					student.major_name = @major and
					student.class_id = @class_id and
					grade<60
				)
			insert into @returntable values(@c_id,@title,@max,@mean,@fail);
            fetch next from cur into @c_id,@title,@sec_id,@semester,@year;			--游标后移
        end
    close cur;											--关闭游标
    deallocate cur;										--取消定义的游标  
    RETURN
END