create function classroom_Schedule( @building varchar(15), @room_number varchar(7), @year numeric(4,0), @semester varchar(6))
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
		from section join course on ( section.course_id = course.course_id )
		where section.building = @building and section.room_number = @room_number and section.year = @year and section.semester = @semester
	);
	
    declare @time_slot_id smallint;
	declare @day smallint;
	declare @title varchar(50);
	declare @building0 varchar(15);
	declare @room_number0 varchar(7);

	open cur;	--���α�
	fetch next from cur into @time_slot_id,@day,@title,@building0,@room_number0;
	while @@FETCH_STATUS = 0
        begin
			insert into @returntable values(@time_slot_id,@day,@title,@building0,@room_number0);
            fetch next from cur into @time_slot_id,@day,@title,@building0,@room_number0;			--�α����
        end
    close cur;											--�ر��α�
    deallocate cur;										--ȡ��������α�  
    RETURN
END