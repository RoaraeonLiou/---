CREATE TRIGGER tr_INSERT ON student
	FOR INSERT
AS
	--声明变量
	DECLARE @major varchar(20)
	DECLARE @class_id varchar(4)
	--提取插入的数据
	SELECT @major=major_name,@class_id=class_id FROM inserted
	--更新班级size
	update class set size = size+1
	where @major=major_name and @class_id=class_id
GO