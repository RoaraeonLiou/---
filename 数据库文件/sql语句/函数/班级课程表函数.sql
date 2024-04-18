create function class_Schedule( @major varchar(20), @class_id varchar(4), @year numeric(4,0), @semester varchar(6))
RETURNS @returntable TABLE
(       
	time_slot_id smallint,	--第几节
	day smallint,			--周几
	title	varchar(50),	--课程名
	building	varchar(15),--所在楼
	room_number	varchar(7)	--所在教室号
)
AS
BEGIN
    declare cur cursor for(
		select time_slot_id, day, title, 
			   building, room_number
		from class_section join section on ( 
				class_section.course_id = section.course_id and
				class_section.sec_id = section.sec_id and
				class_section.semester = section.semester and
				class_section.year = section.year
				) join course on (class_section.course_id = course.course_id)
		where class_section.major_name = @major and class_section.class_id = @class_id and section.year = @year and section.semester = @semester
	);
	
    declare @time_slot_id smallint;
	declare @day smallint;
	declare @title varchar(50);
	declare @building varchar(15);
	declare @room_number varchar(7);

	open cur;	--打开游标
	fetch next from cur into @time_slot_id,@day,@title,@building,@room_number;
	while @@FETCH_STATUS = 0
        begin
			insert into @returntable values(@time_slot_id,@day,@title,@building,@room_number);
            fetch next from cur into @time_slot_id,@day,@title,@building,@room_number;			--游标后移
        end
    close cur;											--关闭游标
    deallocate cur;										--取消定义的游标  
    RETURN
END