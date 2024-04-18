CREATE FUNCTION student_report ( @stu_id varchar(10) )
RETURNS @returntable TABLE(       
	course_id varchar(8),
	title varchar(20),
	semester varchar(6),
	year	numeric(4,0),
	credits numeric(2,0),
	grade numeric(3,0)
)
AS
BEGIN
    declare cur cursor for(
		--搜索学生的所有选课信息
		select takes.course_id, course.title, takes.semester, 
			   takes.year, grade, course.credits
		from student join takes on (student.ID = takes.ID)
			join course on (takes.course_id = course.course_id)
		where student.ID = @stu_id
	);
	
    declare @course_id0 char(10);
	declare @name0 char(14);
	declare @title0 char(40);
	declare @semester0 char(6);
	declare @year0 numeric(4, 0);
	declare @grade0 char(6);
	declare @credits0 numeric(2, 0);

	open cur;
	fetch next from cur into @course_id0,@title0,@semester0,
								@year0,@grade0,@credits0;
	while @@FETCH_STATUS = 0
        begin
			--将学生所有选课信息返回
			insert into @returntable values(@course_id0,@title0,@semester0,
											@year0,@credits0,@grade0);
            fetch next from cur into @course_id0,@title0,@semester0,
										@year0,@grade0,@credits0;
        end
    close cur;
    deallocate cur;
    RETURN
END