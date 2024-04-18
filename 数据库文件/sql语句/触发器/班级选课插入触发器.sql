CREATE TRIGGER tr_Insert_class_section ON class_section
	FOR INSERT
AS
	--��������
	DECLARE @class_id varchar(4)
	DECLARE @major_name varchar(20)
	DECLARE @course_id varchar(8)
	DECLARE @sec_id varchar(8)
	DECLARE @semester varchar(6)
	DECLARE @year numeric(4,0)
	DECLARE @sid varchar(10)
	--��ȡ���������
	SELECT @class_id=class_id, @major_name=major_name, @course_id=course_id, @sec_id=sec_id ,@semester=semester,@year=year
	FROM inserted
	
	
	--�����α�
	declare stu_cursor cursor for (
		select ID 
		from student
		where major_name=@major_name and class_id = @class_id
	)
    --���α�--
    open stu_cursor
    --��ʼѭ���α����--
    fetch next from stu_cursor into @sid
    while @@FETCH_STATUS = 0    --���ر� FETCH���ִ�е�����α��״̬
        begin            
            insert into takes values(@sid,@course_id,@sec_id,@semester,@year,null)
            fetch next from stu_cursor into @sid   --ת����һ���α�
        end   
    close stu_cursor  --�ر��α�
    deallocate stu_cursor   --�ͷ��α�

GO