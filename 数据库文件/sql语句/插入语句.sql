/* department */
insert into department values('��Ϣ������', '�ż�¥', 503349.15, null);
insert into department values('�����붯������', '����¥', 573745.09, null);
insert into department values('���ù���', '����¥', 866831.75, null);
insert into department values('��������ľ����', '����¥', 210627.58, null);
insert into department values('��ѧ', '����¥', 520350.65, null);
insert into department values('�������繤��', '���¥', 734550.70, null);

/* major */
insert into major values('�������ѧ�뼼��', '��Ϣ������');
insert into major values('ͨ�Ź���', '��Ϣ������');
insert into major values('������', '��Ϣ������');
insert into major values('���������Զ���', '�����붯������');
insert into major values('��Դ�붯������', '�����붯������');
insert into major values('����ѧ', '��������ľ����');
insert into major values('��ľ����', '��������ľ����');
insert into major values('�г�Ӫ��', '���ù���');
insert into major values('���ѧ', '���ù���');
insert into major values('��Դ����', '���ù���');
insert into major values('��ѧ��Ӧ����ѧ', '��ѧ');
insert into major values('��Ϣ������ѧ', '��ѧ');
insert into major values('ͳ��ѧ', '��ѧ');
insert into major values('�����Ϣ��ѧ�빤��', '�������繤��');
insert into major values('Ӧ������ѧ', '�������繤��');

/* course */
insert into course values('00001', '��ѧӢ��',null, 3);
insert into course values('00002', '��ѧ����',null, 1);
insert into course values('10001', '���ݽṹ','��Ϣ������', 4);
insert into course values('10002', 'C���Գ������','��Ϣ������', 4);
insert into course values('10003', '�������������','��Ϣ������', 4);
insert into course values('10004', '���������','��Ϣ������', 4);
insert into course values('10005', '���������ϵͳ','��Ϣ������', 4);
insert into course values('10006', '���ݿ����','��Ϣ������', 4);
insert into course values('10007', '��������ԭ��','��Ϣ������', 4);
insert into course values('10008', '����ԭ��','��Ϣ������', 4);
insert into course values('20001', '������������','�����붯������', 2);
insert into course values('30001', '����ԭ�����','���ù���', 2);
insert into course values('40001', '������ѧ','��������ľ����', 2);
insert into course values('50001', '�ߵ���ѧ','��ѧ', 5);
insert into course values('50002', '���Դ���','��ѧ', 5);
insert into course values('50003', '��ɢ��ѧ','��ѧ', 5);
insert into course values('50004', '������','��ѧ', 5);
insert into course values('50005', 'ͳ��ѧ','��ѧ', 4);
insert into course values('60001', '��ѧ����','�������繤��', 4);
insert into course values('60002', '��ѧ','�������繤��', 4);
insert into course values('60003', '��ѧ','�������繤��', 3);
insert into course values('60004', '��ѧ','�������繤��', 3);
insert into course values('60005', '�綯��ѧ','�������繤��', 5);
insert into course values('60006', '������ѧ','�������繤��', 3);

/* time_slot */
insert into time_slot values ( 1, 1, 8, 0, 8, 50);
insert into time_slot values ( 2, 1, 9, 0, 9, 50);
insert into time_slot values ( 3, 1, 10, 10, 11, 0);
insert into time_slot values ( 4, 1, 11, 10, 12, 0);
insert into time_slot values ( 5, 1, 14, 0, 14, 50);
insert into time_slot values ( 6, 1, 15, 0, 15, 50);
insert into time_slot values ( 7, 1, 16, 10, 17, 0);
insert into time_slot values ( 8, 1, 17, 10, 18, 0);

insert into time_slot values ( 1, 2, 8, 0, 8, 50);
insert into time_slot values ( 2, 2, 9, 0, 9, 50);
insert into time_slot values ( 3, 2, 10, 10, 11, 0);
insert into time_slot values ( 4, 2, 11, 10, 12, 0);
insert into time_slot values ( 5, 2, 14, 0, 14, 50);
insert into time_slot values ( 6, 2, 15, 0, 15, 50);
insert into time_slot values ( 7, 2, 16, 10, 17, 0);
insert into time_slot values ( 8, 2, 17, 10, 18, 0);

insert into time_slot values ( 1, 3, 8, 0, 8, 50);
insert into time_slot values ( 2, 3, 9, 0, 9, 50);
insert into time_slot values ( 3, 3, 10, 10, 11, 0);
insert into time_slot values ( 4, 3, 11, 10, 12, 0);
insert into time_slot values ( 5, 3, 14, 0, 14, 50);
insert into time_slot values ( 6, 3, 15, 0, 15, 50);
insert into time_slot values ( 7, 3, 16, 10, 17, 0);
insert into time_slot values ( 8, 3, 17, 10, 18, 0);

insert into time_slot values ( 1, 4, 8, 0, 8, 50);
insert into time_slot values ( 2, 4, 9, 0, 9, 50);
insert into time_slot values ( 3, 4, 10, 10, 11, 0);
insert into time_slot values ( 4, 4, 11, 10, 12, 0);
insert into time_slot values ( 5, 4, 14, 0, 14, 50);
insert into time_slot values ( 6, 4, 15, 0, 15, 50);
insert into time_slot values ( 7, 4, 16, 10, 17, 0);
insert into time_slot values ( 8, 4, 17, 10, 18, 0);

insert into time_slot values ( 1, 5, 8, 0, 8, 50);
insert into time_slot values ( 2, 5, 9, 0, 9, 50);
insert into time_slot values ( 3, 5, 10, 10, 11, 0);
insert into time_slot values ( 4, 5, 11, 10, 12, 0);
insert into time_slot values ( 5, 5, 14, 0, 14, 50);
insert into time_slot values ( 6, 5, 15, 0, 15, 50);
insert into time_slot values ( 7, 5, 16, 10, 17, 0);
insert into time_slot values ( 8, 5, 17, 10, 18, 0);

/* class */
insert into class values ( '1801', 0, '�������ѧ�뼼��' )
insert into class values ( '1802', 0, '�������ѧ�뼼��' )
insert into class values ( '1803', 0, '�������ѧ�뼼��' )
insert into class values ( '1801', 0, 'ͨ�Ź���' )
insert into class values ( '1801', 0, '���������Զ���' )
insert into class values ( '1801', 0, '����ѧ' )
insert into class values ( '1801', 0, '������' )
insert into class values ( '1801', 0, '��ľ����' )
insert into class values ( '1801', 0, '�г�Ӫ��' )
insert into class values ( '1802', 0, '�г�Ӫ��' )
insert into class values ( '1801', 0, '���ѧ' )
insert into class values ( '1801', 0, '��ѧ��Ӧ����ѧ' )
insert into class values ( '1801', 0, 'ͳ��ѧ' )
insert into class values ( '1801', 0, '�����Ϣ��ѧ�빤��' )
insert into class values ( '1801', 0, 'Ӧ������ѧ' )


/* classroom */
insert into classroom values ( '��֪¥', '101', 200 )
insert into classroom values ( '��֪¥', '102', 200 )
insert into classroom values ( '��֪¥', '103', 200 )
insert into classroom values ( '��֪¥', '104', 200 )
insert into classroom values ( '��֪¥', '201', 120 )
insert into classroom values ( '��֪¥', '202', 120 )
insert into classroom values ( '��֪¥', '203', 120 )
insert into classroom values ( '��֪¥', '204', 120 )
insert into classroom values ( '��֪¥', '205', 120 )

insert into classroom values ( '��Զ¥', '101', 200 )
insert into classroom values ( '��Զ¥', '102', 200 )
insert into classroom values ( '��Զ¥', '103', 200 )
insert into classroom values ( '��Զ¥', '104', 200 )
insert into classroom values ( '��Զ¥', '201', 120 )
insert into classroom values ( '��Զ¥', '202', 120 )
insert into classroom values ( '��Զ¥', '203', 120 )
insert into classroom values ( '��Զ¥', '204', 120 )
insert into classroom values ( '��Զ¥', '205', 120 )

insert into classroom values ( '����¥', '101', 240 )
insert into classroom values ( '����¥', '102', 240 )
insert into classroom values ( '����¥', '103', 240 )
insert into classroom values ( '����¥', '104', 240 )
insert into classroom values ( '����¥', '201', 120 )
insert into classroom values ( '����¥', '202', 120 )
insert into classroom values ( '����¥', '203', 120 )
insert into classroom values ( '����¥', '204', 120 )
insert into classroom values ( '����¥', '205', 120 )

insert into classroom values ( '����¥', '101', 60 )
insert into classroom values ( '����¥', '102', 60 )
insert into classroom values ( '����¥', '103', 60 )
insert into classroom values ( '����¥', '104', 60 )
insert into classroom values ( '����¥', '201', 100 )
insert into classroom values ( '����¥', '202', 100 )
insert into classroom values ( '����¥', '203', 100 )
insert into classroom values ( '����¥', '204', 100 )
insert into classroom values ( '����¥', '205', 100 )


/* ������ */
insert into student values('2018000001','������',0,'��Ϣ������','�������ѧ�뼼��','1801',0)
insert into student values('2018000002','��ε��',0,'��Ϣ������','�������ѧ�뼼��','1801',0)
insert into student values('2018000003','����̧',0,'��Ϣ������','�������ѧ�뼼��','1801',0)
insert into student values('2018000004','������',0,'��Ϣ������','�������ѧ�뼼��','1801',0)
insert into student values('2018000005','��Ĺ�',0,'��Ϣ������','�������ѧ�뼼��','1801',0)
insert into student values('2018000006','�Ʋ�',0,'��Ϣ������','�������ѧ�뼼��','1801',0)
insert into student values('2018000007','����¹',0,'��Ϣ������','�������ѧ�뼼��','1801',0)
insert into student values('2018000008','�վ�ģ',0,'��Ϣ������','�������ѧ�뼼��','1801',0)
insert into student values('2018000009','��£��',0,'��Ϣ������','�������ѧ�뼼��','1801',0)
insert into student values('2018000010','��­��',0,'��Ϣ������','�������ѧ�뼼��','1801',0)

insert into student values('2018000011','������',0,'��Ϣ������','�������ѧ�뼼��','1802',0)
insert into student values('2018000012','�ܱ���',0,'��Ϣ������','�������ѧ�뼼��','1802',0)
insert into student values('2018000013','���Ǽ�',0,'��Ϣ������','�������ѧ�뼼��','1802',0)
insert into student values('2018000014','�ྐྵɤ',0,'��Ϣ������','�������ѧ�뼼��','1802',0)
insert into student values('2018000015','������',0,'��Ϣ������','�������ѧ�뼼��','1802',0)
insert into student values('2018000016','��Ѫ��',0,'��Ϣ������','�������ѧ�뼼��','1802',0)
insert into student values('2018000017','κʬ��',0,'��Ϣ������','�������ѧ�뼼��','1802',0)
insert into student values('2018000018','������',0,'��Ϣ������','�������ѧ�뼼��','1802',0)
insert into student values('2018000019','����ͷ',0,'��Ϣ������','�������ѧ�뼼��','1802',0)
insert into student values('2018000020','�Ե�ϵ',0,'��Ϣ������','�������ѧ�뼼��','1802',0)

insert into student values('2018000021','�ӱ���',0,'��Ϣ������','�������ѧ�뼼��','1803',0)
insert into student values('2018000022','������',0,'��Ϣ������','�������ѧ�뼼��','1803',0)
insert into student values('2018000023','˾Ϫɷ',0,'��Ϣ������','�������ѧ�뼼��','1803',0)
insert into student values('2018000024','�Ƴ���',0,'��Ϣ������','�������ѧ�뼼��','1803',0)
insert into student values('2018000025','�Ϲ�ǲ',0,'��Ϣ������','�������ѧ�뼼��','1803',0)
insert into student values('2018000026','�̿ƾ�',0,'��Ϣ������','�������ѧ�뼼��','1803',0)
insert into student values('2018000027','������',0,'��Ϣ������','�������ѧ�뼼��','1803',0)
insert into student values('2018000028','Ԫ����',0,'��Ϣ������','�������ѧ�뼼��','1803',0)
insert into student values('2018000029','����ɦ',0,'��Ϣ������','�������ѧ�뼼��','1803',0)
insert into student values('2018000030','������',0,'��Ϣ������','�������ѧ�뼼��','1803',0)

insert into student values('2018000031','������',0,'���ù���','���ѧ','1801',0)
insert into student values('2018000032','������',0,'���ù���','���ѧ','1801',0)
insert into student values('2018000033','�ϲ�˰',0,'���ù���','���ѧ','1801',0)
insert into student values('2018000034','�̳���',0,'���ù���','���ѧ','1801',0)
insert into student values('2018000035','��±϶',0,'���ù���','���ѧ','1801',0)
insert into student values('2018000036','��Ϋ��',0,'���ù���','���ѧ','1801',0)
insert into student values('2018000037','ϯ��Ȩ',0,'���ù���','���ѧ','1801',0)
insert into student values('2018000038','������',0,'���ù���','���ѧ','1801',0)
insert into student values('2018000039','��ĵ��',0,'���ù���','���ѧ','1801',0)
insert into student values('2018000040','��ɨ��',0,'���ù���','���ѧ','1801',0)

insert into student values('2018000041','�տɶ�',0,'�����붯������','���������Զ���','1801',0)
insert into student values('2018000042','ʷ����',0,'�����붯������','���������Զ���','1801',0)
insert into student values('2018000043','�ܹн�',0,'�����붯������','���������Զ���','1801',0)
insert into student values('2018000044','����',0,'�����붯������','���������Զ���','1801',0)
insert into student values('2018000045','�並��',0,'�����붯������','���������Զ���','1801',0)
insert into student values('2018000046','�ߵ���',0,'�����붯������','���������Զ���','1801',0)
insert into student values('2018000047','�Ҿ�ͤ',0,'�����붯������','���������Զ���','1801',0)
insert into student values('2018000048','����Ң',0,'�����붯������','���������Զ���','1801',0)
insert into student values('2018000049','����ү',0,'�����붯������','���������Զ���','1801',0)
insert into student values('2018000050','���һ�',0,'�����붯������','���������Զ���','1801',0)

insert into student values('2018000051','������',0,'�������繤��','�����Ϣ��ѧ�빤��','1801',0)
insert into student values('2018000052','�»�Ż',0,'�������繤��','�����Ϣ��ѧ�빤��','1801',0)
insert into student values('2018000053','��Һ�',0,'�������繤��','�����Ϣ��ѧ�빤��','1801',0)
insert into student values('2018000054','������',0,'�������繤��','�����Ϣ��ѧ�빤��','1801',0)
insert into student values('2018000055','��̼Ѱ',0,'�������繤��','�����Ϣ��ѧ�빤��','1801',0)
insert into student values('2018000056','���ƶ�',0,'�������繤��','�����Ϣ��ѧ�빤��','1801',0)
insert into student values('2018000057','��ʩ��',0,'�������繤��','�����Ϣ��ѧ�빤��','1801',0)
insert into student values('2018000058','�׺���',0,'�������繤��','�����Ϣ��ѧ�빤��','1801',0)
insert into student values('2018000059','������',0,'�������繤��','�����Ϣ��ѧ�빤��','1801',0)
insert into student values('2018000060','������',0,'�������繤��','�����Ϣ��ѧ�빤��','1801',0)

insert into student values('2018000061','�ر���',0,'��������ľ����','����ѧ','1801',0)
insert into student values('2018000062','��´��',0,'��������ľ����','����ѧ','1801',0)
insert into student values('2018000063','ղ��δ',0,'��������ľ����','����ѧ','1801',0)
insert into student values('2018000064','��®��',0,'��������ľ����','����ѧ','1801',0)
insert into student values('2018000065','����',0,'��������ľ����','����ѧ','1801',0)
insert into student values('2018000066','�ұĶ�',0,'��������ľ����','����ѧ','1801',0)
insert into student values('2018000067','������',0,'��������ľ����','����ѧ','1801',0)
insert into student values('2018000068','��ʣ��',0,'��������ľ����','����ѧ','1801',0)
insert into student values('2018000069','ղ����',0,'��������ľ����','����ѧ','1801',0)
insert into student values('2018000070','κ��ɥ',0,'��������ľ����','����ѧ','1801',0)

insert into student values('2018000071','³ɧʶ',0,'���ù���','�г�Ӫ��','1801',0)
insert into student values('2018000072','ˮ��ȳ',0,'���ù���','�г�Ӫ��','1801',0)
insert into student values('2018000073','����ͭ',0,'���ù���','�г�Ӫ��','1801',0)
insert into student values('2018000074','������',0,'���ù���','�г�Ӫ��','1801',0)
insert into student values('2018000075','��ȫ��',0,'���ù���','�г�Ӫ��','1801',0)
insert into student values('2018000076','�Ӱ���',0,'���ù���','�г�Ӫ��','1801',0)
insert into student values('2018000077','Ҷ��ǿ',0,'���ù���','�г�Ӫ��','1801',0)
insert into student values('2018000078','�տ�к',0,'���ù���','�г�Ӫ��','1801',0)
insert into student values('2018000079','��̺�',0,'���ù���','�г�Ӫ��','1801',0)
insert into student values('2018000080','Ѧ�ȸ�',0,'���ù���','�г�Ӫ��','1801',0)

insert into student values('2018000081','֣ö��',0,'���ù���','�г�Ӫ��','1802',0)
insert into student values('2018000082','Ҷϻͨ',0,'���ù���','�г�Ӫ��','1802',0)
insert into student values('2018000083','�ظ���',0,'���ù���','�г�Ӫ��','1802',0)
insert into student values('2018000084','ţ����',0,'���ù���','�г�Ӫ��','1802',0)
insert into student values('2018000085','������',0,'���ù���','�г�Ӫ��','1802',0)
insert into student values('2018000086','���л�',0,'���ù���','�г�Ӫ��','1802',0)
insert into student values('2018000087','������',0,'���ù���','�г�Ӫ��','1802',0)
insert into student values('2018000088','��˿��',0,'���ù���','�г�Ӫ��','1802',0)
insert into student values('2018000089','ׯ�ź�',0,'���ù���','�г�Ӫ��','1802',0)
insert into student values('2018000090','�̺���',0,'���ù���','�г�Ӫ��','1802',0)

insert into student values('2018000091','������',0,'��ѧ','��ѧ��Ӧ����ѧ','1801',0)
insert into student values('2018000092','�ƿ���',0,'��ѧ','��ѧ��Ӧ����ѧ','1801',0)
insert into student values('2018000093','��̷��',0,'��ѧ','��ѧ��Ӧ����ѧ','1801',0)
insert into student values('2018000094','���о�',0,'��ѧ','��ѧ��Ӧ����ѧ','1801',0)
insert into student values('2018000095','�ܱ�Ȧ',0,'��ѧ','��ѧ��Ӧ����ѧ','1801',0)
insert into student values('2018000096','�絬��',0,'��ѧ','��ѧ��Ӧ����ѧ','1801',0)
insert into student values('2018000097','ˮңǫ',0,'��ѧ','��ѧ��Ӧ����ѧ','1801',0)
insert into student values('2018000098','Ҷʳ��',0,'��ѧ','��ѧ��Ӧ����ѧ','1801',0)
insert into student values('2018000099','������',0,'��ѧ','��ѧ��Ӧ����ѧ','1801',0)
insert into student values('2018000100','����ȱ',0,'��ѧ','��ѧ��Ӧ����ѧ','1801',0)

insert into student values('2018000101','�ĺ',0,'��Ϣ������','ͨ�Ź���','1801',0)
insert into student values('2018000102','������',0,'��Ϣ������','ͨ�Ź���','1801',0)
insert into student values('2018000103','ʩ�Ÿ�',0,'��Ϣ������','ͨ�Ź���','1801',0)
insert into student values('2018000104','Ҷ����',0,'��Ϣ������','ͨ�Ź���','1801',0)
insert into student values('2018000105','�����',0,'��Ϣ������','ͨ�Ź���','1801',0)
insert into student values('2018000106','���ǹ�',0,'��Ϣ������','ͨ�Ź���','1801',0)
insert into student values('2018000107','����Ϥ',0,'��Ϣ������','ͨ�Ź���','1801',0)
insert into student values('2018000108','ţ˼��',0,'��Ϣ������','ͨ�Ź���','1801',0)
insert into student values('2018000109','����Ŷ',0,'��Ϣ������','ͨ�Ź���','1801',0)
insert into student values('2018000110','������',0,'��Ϣ������','ͨ�Ź���','1801',0)

insert into student values('2018000111','���һ�',0,'��ѧ','ͳ��ѧ','1801',0)
insert into student values('2018000112','��Ѳ��',0,'��ѧ','ͳ��ѧ','1801',0)
insert into student values('2018000113','�״���',0,'��ѧ','ͳ��ѧ','1801',0)
insert into student values('2018000114','�Ҳ���',0,'��ѧ','ͳ��ѧ','1801',0)
insert into student values('2018000115','��Ȱ��',0,'��ѧ','ͳ��ѧ','1801',0)
insert into student values('2018000116','������',0,'��ѧ','ͳ��ѧ','1801',0)
insert into student values('2018000117','���ư�',0,'��ѧ','ͳ��ѧ','1801',0)
insert into student values('2018000118','�ֵ���',0,'��ѧ','ͳ��ѧ','1801',0)
insert into student values('2018000119','��ʿ˸',0,'��ѧ','ͳ��ѧ','1801',0)
insert into student values('2018000120','Ҷ��̽',0,'��ѧ','ͳ��ѧ','1801',0)

insert into student values('2018000121','���ѻ�',0,'��������ľ����','��ľ����','1801',0)
insert into student values('2018000122','���Ļ�',0,'��������ľ����','��ľ����','1801',0)
insert into student values('2018000123','��ɰ��',0,'��������ľ����','��ľ����','1801',0)
insert into student values('2018000124','������',0,'��������ľ����','��ľ����','1801',0)
insert into student values('2018000125','ʯ����',0,'��������ľ����','��ľ����','1801',0)
insert into student values('2018000126','��ŭĻ',0,'��������ľ����','��ľ����','1801',0)
insert into student values('2018000127','Ҧ����',0,'��������ľ����','��ľ����','1801',0)
insert into student values('2018000128','��ʯ��',0,'��������ľ����','��ľ����','1801',0)
insert into student values('2018000129','����',0,'��������ľ����','��ľ����','1801',0)
insert into student values('2018000130','������',0,'��������ľ����','��ľ����','1801',0)

insert into student values('2018000131','��Ϣ��',0,'��Ϣ������','������','1801',0)
insert into student values('2018000132','������',0,'��Ϣ������','������','1801',0)
insert into student values('2018000133','ʷ�в�',0,'��Ϣ������','������','1801',0)
insert into student values('2018000134','���Ŭ',0,'��Ϣ������','������','1801',0)
insert into student values('2018000135','�ٶ���',0,'��Ϣ������','������','1801',0)
insert into student values('2018000136','��̸',0,'��Ϣ������','������','1801',0)
insert into student values('2018000137','���˶�',0,'��Ϣ������','������','1801',0)
insert into student values('2018000138','½����',0,'��Ϣ������','������','1801',0)
insert into student values('2018000139','��έ��',0,'��Ϣ������','������','1801',0)
insert into student values('2018000140','ҶͰ��',0,'��Ϣ������','������','1801',0)

insert into student values('2018000141','�³�ģ',0,'�������繤��','Ӧ������ѧ','1801',0)
insert into student values('2018000142','Ԫ����',0,'�������繤��','Ӧ������ѧ','1801',0)
insert into student values('2018000143','�ַ���',0,'�������繤��','Ӧ������ѧ','1801',0)
insert into student values('2018000144','Τȿư',0,'�������繤��','Ӧ������ѧ','1801',0)
insert into student values('2018000145','��ū��',0,'�������繤��','Ӧ������ѧ','1801',0)
insert into student values('2018000146','�Ṷ��',0,'�������繤��','Ӧ������ѧ','1801',0)
insert into student values('2018000147','ϯ����',0,'�������繤��','Ӧ������ѧ','1801',0)
insert into student values('2018000148','³ˡ��',0,'�������繤��','Ӧ������ѧ','1801',0)
insert into student values('2018000149','�ұʱ�',0,'�������繤��','Ӧ������ѧ','1801',0)
insert into student values('2018000150','������',0,'�������繤��','Ӧ������ѧ','1801',0)

/* �о��� */
insert into student values('2018001001','ʩ�θ�',0,'��Ϣ������','�������ѧ�뼼��',null,1)
insert into student values('2018001002','��ų��',0,'��Ϣ������','�������ѧ�뼼��',null,1)
insert into student values('2018001003','�෶��',0,'��Ϣ������','�������ѧ�뼼��',null,1)
insert into student values('2018001004','������',0,'��Ϣ������','�������ѧ�뼼��',null,1)
insert into student values('2018001005','��øķ',0,'��Ϣ������','�������ѧ�뼼��',null,1)
insert into student values('2018001006','��ǩ��',0,'��Ϣ������','�������ѧ�뼼��',null,1)
insert into student values('2018001007','����ǯ',0,'��Ϣ������','�������ѧ�뼼��',null,1)
insert into student values('2018001008','��˾��',0,'��Ϣ������','�������ѧ�뼼��',null,1)
insert into student values('2018001009','������',0,'��Ϣ������','�������ѧ�뼼��',null,1)
insert into student values('2018001010','����Ż',0,'��Ϣ������','�������ѧ�뼼��',null,1)


/* ��Ա */
delete from instructor

insert into instructor values('10001','��Ʀ��','�����붯������','����',57144)
insert into instructor values('10002','��±å','�����붯������','������',41518)
insert into instructor values('10003','�⼫Ǵ','�����붯������','������',38108)
insert into instructor values('10004','��ż�','�����붯������','��Ա',35945)
insert into instructor values('10005','����γ','�����붯������','��Ա',30054)

insert into instructor values('10006','��έ��','��������ľ����','����',51933)
insert into instructor values('10007','κΤ��','��������ľ����','������',49502)
insert into instructor values('10008','�ո͵�','��������ľ����','������',44517)
insert into instructor values('10009','·˪��','��������ľ����','��Ա',31604)
insert into instructor values('10010','�һ�Ϭ','��������ľ����','��Ա',27131)

insert into instructor values('10011','�ұ�Ʊ','���ù���','����',58131)
insert into instructor values('10012','��Ƿ','���ù���','������',45476)
insert into instructor values('10013','�����','���ù���','������',41631)
insert into instructor values('10014','��пʳ','���ù���','��Ա',34092)
insert into instructor values('10015','�±���','���ù���','��Ա',26608)

insert into instructor values('10016','��ѻ��','��ѧ','����',59194)
insert into instructor values('10017','������','��ѧ','������',56118)
insert into instructor values('10018','�°���','��ѧ','������',41024)
insert into instructor values('10019','��ҦЬ','��ѧ','��Ա',30598)
insert into instructor values('10020','��ͭ��','��ѧ','��Ա',25512)

insert into instructor values('10021','��Ĵ��','�������繤��','����',54983)
insert into instructor values('10022','����θ','�������繤��','������',44000)
insert into instructor values('10023','�⽤ɪ','�������繤��','������',37115)
insert into instructor values('10024','ʯ�ư�','�������繤��','��Ա',32633)
insert into instructor values('10025','������','�������繤��','��Ա',35193)

insert into instructor values('10026','�³�Ǵ','��Ϣ������','����',64004)
insert into instructor values('10027','������','��Ϣ������','������',53104)
insert into instructor values('10028','��ùϼ','��Ϣ������','������',38769)
insert into instructor values('10029','֣Ϳ��','��Ϣ������','��Ա',34640)
insert into instructor values('10030','����ҽ','��Ϣ������','��Ա',33619)

/* advisor */
insert into advisor values('2018001001','10027')
insert into advisor values('2018001002','10027')
insert into advisor values('2018001003','10028')
insert into advisor values('2018001004','10026')
insert into advisor values('2018001005','10026')
insert into advisor values('2018001006','10028')
insert into advisor values('2018001007','10028')
insert into advisor values('2018001008','10027')
insert into advisor values('2018001009','10027')
insert into advisor values('2018001010','10027')

/* dean */
insert into instructor values('20001','����ʧ','�����붯������','ϵ����',81117)
insert into instructor values('20002','��˷έ','��������ľ����','ϵ����',77004)
insert into instructor values('20003','�Ÿ���','���ù���','ϵ����',70853)
insert into instructor values('20004','��ǩ��','��ѧ','ϵ����',83802)
insert into instructor values('20005','�˿���','�������繤��','ϵ����',80254)
insert into instructor values('20006','�����','��Ϣ������','ϵ����',89517)

/* section */
delete from section

insert into section values('00001', '1', 'Fall', 2020, null, null, 1,1);
insert into section values('00001', '2', 'Spring', 2020, null, null, 6,4);

insert into section values('00002', '1', 'Spring', 2020, '����¥', '103', 5,3);
insert into section values('00002', '2', 'Fall', 2020, '����¥', '103', 7,4);

insert into section values('10001', '1', 'Spring', 2020, '����¥', '103', 5,1);
insert into section values('10001', '2', 'Fall', 2020, '����¥', '205', 4,2);

insert into section values('10002', '1', 'Spring', 2020, '��Զ¥', '203', 4,1);
insert into section values('10002', '2', 'Fall', 2020, '��Զ¥', '104', 1,4);

insert into section values('10003', '1', 'Spring', 2020, '����¥', '103', 6,3);
insert into section values('10003', '2', 'Fall', 2020, '��֪¥', '104', 8,2);

insert into section values('10004', '1', 'Spring', 2020, '��Զ¥', '103', 3,3);
insert into section values('10004', '2', 'Fall', 2020, '��֪¥', '204', 4,4);

insert into section values('10005', '1', 'Spring', 2020, '��Զ¥', '103', 3,2);
insert into section values('10005', '2', 'Fall', 2020, '����¥', '202', 4,3);

insert into section values('10006', '1', 'Spring', 2020, '����¥', '103', 1,5);
insert into section values('10006', '2', 'Fall', 2020, '����¥', '104', 7,3);

insert into section values('10007', '1', 'Spring', 2020, '��֪¥', '102', 5,5);
insert into section values('10007', '2', 'Fall', 2020, '��֪¥', '205', 8,5);

insert into section values('10008', '1', 'Spring', 2020, '��Զ¥', '202', 1,3);
insert into section values('10008', '2', 'Fall', 2020, '����¥', '104', 1,2);


/* teaches */
insert into teaches values('10026','10001','1','Spring',2020)
insert into teaches values('10027','10001','2','Fall',2020)
insert into teaches values('10028','10002','1','Spring',2020)
insert into teaches values('10029','10002','2','Fall',2020)
insert into teaches values('10030','10003','1','Spring',2020)
insert into teaches values('10026','10003','1','Spring',2020)
insert into teaches values('10027','10004','2','Fall',2020)
insert into teaches values('10028','10004','1','Spring',2020)
insert into teaches values('10029','10005','2','Fall',2020)
insert into teaches values('10030','10005','1','Spring',2020)
insert into teaches values('10026','10006','1','Spring',2020)
insert into teaches values('10027','10006','2','Fall',2020)
insert into teaches values('10028','10007','1','Spring',2020)
insert into teaches values('10029','10007','2','Fall',2020)
insert into teaches values('10030','10008','1','Spring',2020)
insert into teaches values('10027','10008','2','Fall',2020)


/* prereq */
insert into prereq values('10001','10002')	--���ݽṹ<-C����
insert into prereq values('10003','10002')	--�������<-C����
insert into prereq values('10004','10001')	--���������<-���ݽṹ
insert into prereq values('10005','10001')	--����ϵͳ<-���ݽṹ
insert into prereq values('10006','10001')	--���ݿ�<-���ݽṹ
insert into prereq values('10006','50003')	--���ݿ�<-��ɢ��ѧ
insert into prereq values('10007','10001')	--����<-���ݽṹ
insert into prereq values('60005','60002')	--�綯��ѧ<-��ѧ
insert into prereq values('60006','60002')	--������ѧ<-��ѧ


/* class_section */
insert into class_section values('1801','�������ѧ�뼼��','10002','1','Spring',2020)
insert into class_section values('1801','�������ѧ�뼼��','10001','1','Spring',2020)
insert into class_section values('1801','�������ѧ�뼼��','10003','1','Spring',2020)
insert into class_section values('1801','�������ѧ�뼼��','10004','2','Fall',2020)
insert into class_section values('1801','�������ѧ�뼼��','10005','2','Fall',2020)
insert into class_section values('1801','�������ѧ�뼼��','10006','1','Spring',2020)
insert into class_section values('1801','�������ѧ�뼼��','10007','1','Spring',2020)
insert into class_section values('1801','�������ѧ�뼼��','10008','1','Spring',2020)


insert into class_section values('1802','�������ѧ�뼼��','10001','2','Fall',2020)
insert into class_section values('1802','�������ѧ�뼼��','10002','2','Fall',2020)
insert into class_section values('1802','�������ѧ�뼼��','10003','2','Fall',2020)
insert into class_section values('1802','�������ѧ�뼼��','10004','2','Fall',2020)
insert into class_section values('1802','�������ѧ�뼼��','10005','2','Fall',2020)
insert into class_section values('1802','�������ѧ�뼼��','10006','2','Fall',2020)
insert into class_section values('1802','�������ѧ�뼼��','10007','2','Fall',2020)
insert into class_section values('1802','�������ѧ�뼼��','10008','2','Fall',2020)


insert into class_section values('1803','�������ѧ�뼼��','10001','1','Spring',2020)
insert into class_section values('1803','�������ѧ�뼼��','10002','2','Fall',2020)
insert into class_section values('1803','�������ѧ�뼼��','10003','1','Spring',2020)
insert into class_section values('1803','�������ѧ�뼼��','10004','1','Spring',2020)
insert into class_section values('1803','�������ѧ�뼼��','10005','2','Fall',2020)
insert into class_section values('1803','�������ѧ�뼼��','10006','2','Fall',2020)
insert into class_section values('1803','�������ѧ�뼼��','10007','1','Spring',2020)
insert into class_section values('1803','�������ѧ�뼼��','10008','2','Fall',2020)


/* ����ɼ� */
update takes set grade = round(50*CONVERT(BIGINT,RIGHT(ABS(CHECKSUM(NEWID())),9))*0.1/100000000,0)+50
where grade is null