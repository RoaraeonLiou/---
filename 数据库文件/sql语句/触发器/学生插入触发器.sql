CREATE TRIGGER tr_INSERT ON student
	FOR INSERT
AS
	--��������
	DECLARE @major varchar(20)
	DECLARE @class_id varchar(4)
	--��ȡ���������
	SELECT @major=major_name,@class_id=class_id FROM inserted
	--���°༶size
	update class set size = size+1
	where @major=major_name and @class_id=class_id
GO