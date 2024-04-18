CREATE TRIGGER tr_insert_instructor ON instructor
	INSTEAD OF INSERT
AS
	--��������
	DECLARE @title varchar(20)
	DECLARE @dept varchar(20)
	DECLARE @dean_id varchar(5)
	--��ȡ���������
	SELECT @title=title FROM inserted
	
    if(@title='ϵ����')
		begin
			SELECT @dept=dept_name FROM inserted
			SELECT @dean_id=dean_id FROM department WHERE dept_name=@dept
			if(@dean_id is null)
				begin
					insert into instructor select * from inserted;
				end
			else
				begin
					raiserror('����ϵ����',18,2)
				end
		end
	else
		begin
			insert into instructor select * from inserted;
		end
GO