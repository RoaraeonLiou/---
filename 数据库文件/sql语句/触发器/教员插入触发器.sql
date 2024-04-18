CREATE TRIGGER tr_insert_instructor ON instructor
	INSTEAD OF INSERT
AS
	--声明变量
	DECLARE @title varchar(20)
	DECLARE @dept varchar(20)
	DECLARE @dean_id varchar(5)
	--提取插入的数据
	SELECT @title=title FROM inserted
	
    if(@title='系主任')
		begin
			SELECT @dept=dept_name FROM inserted
			SELECT @dean_id=dean_id FROM department WHERE dept_name=@dept
			if(@dean_id is null)
				begin
					insert into instructor select * from inserted;
				end
			else
				begin
					raiserror('已有系主任',18,2)
				end
		end
	else
		begin
			insert into instructor select * from inserted;
		end
GO