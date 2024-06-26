CREATE TRIGGER tr_Insert_advisor ON advisor
   INSTEAD OF INSERT
AS 
BEGIN
    declare @s_ID varchar(10)
    declare @graduated int
    declare @t_id varchar(5)
    declare @title varchar(20)
    
    select @s_ID=s_ID,@t_id=i_ID from inserted
    select @graduated=graduated from student where ID = @s_ID
    
    if(@graduated=1)
		begin
			select @title=title from instructor where ID=@t_id
			if(@title='教员')
				begin
					raiserror('所选教师没有资格指导研究生',18,2)
				end
			else
				begin
					insert into advisor select * from inserted;
				end	
		end
	else
		begin
			raiserror('插入学生不是研究生',18,2)
		end
END
