CREATE TRIGGER tr_Insert_class_section ON class_section
	FOR INSERT
AS
	--声明变量
	DECLARE @class_id varchar(4)
	DECLARE @major_name varchar(20)
	DECLARE @course_id varchar(8)
	DECLARE @sec_id varchar(8)
	DECLARE @semester varchar(6)
	DECLARE @year numeric(4,0)
	DECLARE @sid varchar(10)
	--提取插入的数据
	SELECT @class_id=class_id, @major_name=major_name, @course_id=course_id, @sec_id=sec_id ,@semester=semester,@year=year
	FROM inserted
	
	
	--定义游标
	declare stu_cursor cursor for (
		select ID 
		from student
		where major_name=@major_name and class_id = @class_id
	)
    --打开游标--
    open stu_cursor
    --开始循环游标变量--
    fetch next from stu_cursor into @sid
    while @@FETCH_STATUS = 0    --返回被 FETCH语句执行的最后游标的状态
        begin            
            insert into takes values(@sid,@course_id,@sec_id,@semester,@year,null)
            fetch next from stu_cursor into @sid   --转到下一个游标
        end   
    close stu_cursor  --关闭游标
    deallocate stu_cursor   --释放游标

GO