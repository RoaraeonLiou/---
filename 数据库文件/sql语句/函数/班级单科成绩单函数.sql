create function class_course_report( @major varchar(20), @class_id varchar(4),@course_id varchar(8) )
RETURNS @returntable TABLE
(       
	stu_id varchar(10),
	stu_name varchar(20),
	grade	numeric(3,0)
)
AS
BEGIN
    declare cur cursor for(
		select student.ID, name, grade
		from student join takes on ( student.ID = takes.ID)
		where student.major_name = @major and student.class_id = @class_id and takes.course_id = @course_id
	);
	
    declare @stu_id varchar(10);
	declare @stu_name varchar(20);
	declare @grade numeric(3,0);

	open cur;	--打开游标
	fetch next from cur into @stu_id,@stu_name,@grade;
	while @@FETCH_STATUS = 0
        begin
			insert into @returntable values(@stu_id,@stu_name,@grade);
            fetch next from cur into @stu_id,@stu_name,@grade;			--游标后移
        end
    close cur;											--关闭游标
    deallocate cur;										--取消定义的游标  
    RETURN
END