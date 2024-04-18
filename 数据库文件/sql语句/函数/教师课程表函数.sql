create FUNCTION instructor_Schedule ( @ins_id varchar(10), @year numeric(4,0), @semester varchar(6))
RETURNS @returntable TABLE
(       
	time_slot_id smallint,	--�ڼ���
	day smallint,			--�ܼ�
	title	varchar(50),	--�γ���
	building	varchar(15),--����¥
	room_number	varchar(7)	--���ڽ��Һ�
)
AS
BEGIN
    declare cur cursor for(
		select time_slot_id, day, title, 
			   building, room_number
		from teaches join section on (
				teaches.course_id = section.course_id and 
				teaches.sec_id = section.sec_id and
				teaches.semester = section.semester and
				teaches.year = section.year
			)join course on (section.course_id = course.course_id)
		where teaches.ID = @ins_id and section.year = @year and section.semester = @semester
	);
	
    declare @time_slot_id smallint;
	declare @day smallint;
	declare @title varchar(50);
	declare @building varchar(15);
	declare @room_number varchar(7);

	open cur;	--���α�
	fetch next from cur into @time_slot_id,@day,@title,@building,@room_number;
	while @@FETCH_STATUS = 0
        begin
			insert into @returntable values(@time_slot_id,@day,@title,@building,@room_number);
            fetch next from cur into @time_slot_id,@day,@title,@building,@room_number;			--�α����
        end
    close cur;											--�ر��α�
    deallocate cur;										--ȡ��������α�  
    RETURN
END