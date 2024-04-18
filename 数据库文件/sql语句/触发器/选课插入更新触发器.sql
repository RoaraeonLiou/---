CREATE TRIGGER tr_Insert_takes ON takes
	FOR INSERT,UPDATE
AS
	--声明变量
	DECLARE @ID varchar(10)
	DECLARE @credits numeric(2,0)
	DECLARE @course_id varchar(8)
	DECLARE @grade numeric(3, 0)
	--提取插入的数据
	SELECT @ID=ID, @course_id=course_id,@grade=grade FROM inserted
	if(@grade is not null)
		begin 
			--提取课程学分
			SELECT @credits = credits
			FROM course
			WHERE course_id = @course_id
			--更新总学分
			UPDATE student SET tot_cred = tot_cred + @credits
			WHERE ID = @ID
		end

GO