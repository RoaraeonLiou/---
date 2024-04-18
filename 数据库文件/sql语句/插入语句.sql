/* department */
insert into department values('信息与计算机', '信计楼', 503349.15, null);
insert into department values('电气与动力工程', '电气楼', 573745.09, null);
insert into department values('经济管理', '经管楼', 866831.75, null);
insert into department values('建筑与土木工程', '建筑楼', 210627.58, null);
insert into department values('数学', '数科楼', 520350.65, null);
insert into department values('物理与光电工程', '物电楼', 734550.70, null);

/* major */
insert into major values('计算机科学与技术', '信息与计算机');
insert into major values('通信工程', '信息与计算机');
insert into major values('物联网', '信息与计算机');
insert into major values('电气工程自动化', '电气与动力工程');
insert into major values('能源与动力工程', '电气与动力工程');
insert into major values('建筑学', '建筑与土木工程');
insert into major values('土木工程', '建筑与土木工程');
insert into major values('市场营销', '经济管理');
insert into major values('会计学', '经济管理');
insert into major values('能源经济', '经济管理');
insert into major values('数学与应用数学', '数学');
insert into major values('信息与计算科学', '数学');
insert into major values('统计学', '数学');
insert into major values('光电信息科学与工程', '物理与光电工程');
insert into major values('应用物理学', '物理与光电工程');

/* course */
insert into course values('00001', '大学英语',null, 3);
insert into course values('00002', '大学体育',null, 1);
insert into course values('10001', '数据结构','信息与计算机', 4);
insert into course values('10002', 'C语言程序设计','信息与计算机', 4);
insert into course values('10003', '面向对象程序设计','信息与计算机', 4);
insert into course values('10004', '计算机网络','信息与计算机', 4);
insert into course values('10005', '计算机操作系统','信息与计算机', 4);
insert into course values('10006', '数据库概论','信息与计算机', 4);
insert into course values('10007', '计算机组成原理','信息与计算机', 4);
insert into course values('10008', '编译原理','信息与计算机', 4);
insert into course values('20001', '电气工程理论','电气与动力工程', 2);
insert into course values('30001', '经济原理概论','经济管理', 2);
insert into course values('40001', '建筑美学','建筑与土木工程', 2);
insert into course values('50001', '高等数学','数学', 5);
insert into course values('50002', '线性代数','数学', 5);
insert into course values('50003', '离散数学','数学', 5);
insert into course values('50004', '概率论','数学', 5);
insert into course values('50005', '统计学','数学', 4);
insert into course values('60001', '大学物理','物理与光电工程', 4);
insert into course values('60002', '力学','物理与光电工程', 4);
insert into course values('60003', '热学','物理与光电工程', 3);
insert into course values('60004', '光学','物理与光电工程', 3);
insert into course values('60005', '电动力学','物理与光电工程', 5);
insert into course values('60006', '量子力学','物理与光电工程', 3);

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
insert into class values ( '1801', 0, '计算机科学与技术' )
insert into class values ( '1802', 0, '计算机科学与技术' )
insert into class values ( '1803', 0, '计算机科学与技术' )
insert into class values ( '1801', 0, '通信工程' )
insert into class values ( '1801', 0, '电气工程自动化' )
insert into class values ( '1801', 0, '建筑学' )
insert into class values ( '1801', 0, '物联网' )
insert into class values ( '1801', 0, '土木工程' )
insert into class values ( '1801', 0, '市场营销' )
insert into class values ( '1802', 0, '市场营销' )
insert into class values ( '1801', 0, '会计学' )
insert into class values ( '1801', 0, '数学与应用数学' )
insert into class values ( '1801', 0, '统计学' )
insert into class values ( '1801', 0, '光电信息科学与工程' )
insert into class values ( '1801', 0, '应用物理学' )


/* classroom */
insert into classroom values ( '行知楼', '101', 200 )
insert into classroom values ( '行知楼', '102', 200 )
insert into classroom values ( '行知楼', '103', 200 )
insert into classroom values ( '行知楼', '104', 200 )
insert into classroom values ( '行知楼', '201', 120 )
insert into classroom values ( '行知楼', '202', 120 )
insert into classroom values ( '行知楼', '203', 120 )
insert into classroom values ( '行知楼', '204', 120 )
insert into classroom values ( '行知楼', '205', 120 )

insert into classroom values ( '行远楼', '101', 200 )
insert into classroom values ( '行远楼', '102', 200 )
insert into classroom values ( '行远楼', '103', 200 )
insert into classroom values ( '行远楼', '104', 200 )
insert into classroom values ( '行远楼', '201', 120 )
insert into classroom values ( '行远楼', '202', 120 )
insert into classroom values ( '行远楼', '203', 120 )
insert into classroom values ( '行远楼', '204', 120 )
insert into classroom values ( '行远楼', '205', 120 )

insert into classroom values ( '行勉楼', '101', 240 )
insert into classroom values ( '行勉楼', '102', 240 )
insert into classroom values ( '行勉楼', '103', 240 )
insert into classroom values ( '行勉楼', '104', 240 )
insert into classroom values ( '行勉楼', '201', 120 )
insert into classroom values ( '行勉楼', '202', 120 )
insert into classroom values ( '行勉楼', '203', 120 )
insert into classroom values ( '行勉楼', '204', 120 )
insert into classroom values ( '行勉楼', '205', 120 )

insert into classroom values ( '行逸楼', '101', 60 )
insert into classroom values ( '行逸楼', '102', 60 )
insert into classroom values ( '行逸楼', '103', 60 )
insert into classroom values ( '行逸楼', '104', 60 )
insert into classroom values ( '行逸楼', '201', 100 )
insert into classroom values ( '行逸楼', '202', 100 )
insert into classroom values ( '行逸楼', '203', 100 )
insert into classroom values ( '行逸楼', '204', 100 )
insert into classroom values ( '行逸楼', '205', 100 )


/* 本科生 */
insert into student values('2018000001','方垂柿',0,'信息与计算机','计算机科学与技术','1801',0)
insert into student values('2018000002','苗蔚闻',0,'信息与计算机','计算机科学与技术','1801',0)
insert into student values('2018000003','俞睦抬',0,'信息与计算机','计算机科学与技术','1801',0)
insert into student values('2018000004','倪衔良',0,'信息与计算机','计算机科学与技术','1801',0)
insert into student values('2018000005','吴衬埂',0,'信息与计算机','计算机科学与技术','1801',0)
insert into student values('2018000006','窦捌餐',0,'信息与计算机','计算机科学与技术','1801',0)
insert into student values('2018000007','安菇鹿',0,'信息与计算机','计算机科学与技术','1801',0)
insert into student values('2018000008','陶经模',0,'信息与计算机','计算机科学与技术','1801',0)
insert into student values('2018000009','昌拢锰',0,'信息与计算机','计算机科学与技术','1801',0)
insert into student values('2018000010','罗颅蒙',0,'信息与计算机','计算机科学与技术','1801',0)

insert into student values('2018000011','幸粒法',0,'信息与计算机','计算机科学与技术','1802',0)
insert into student values('2018000012','周蹦炼',0,'信息与计算机','计算机科学与技术','1802',0)
insert into student values('2018000013','汤亚祭',0,'信息与计算机','计算机科学与技术','1802',0)
insert into student values('2018000014','燕竟嗓',0,'信息与计算机','计算机科学与技术','1802',0)
insert into student values('2018000015','仇谰淳',0,'信息与计算机','计算机科学与技术','1802',0)
insert into student values('2018000016','昌血环',0,'信息与计算机','计算机科学与技术','1802',0)
insert into student values('2018000017','魏尸籍',0,'信息与计算机','计算机科学与技术','1802',0)
insert into student values('2018000018','冯晾常',0,'信息与计算机','计算机科学与技术','1802',0)
insert into student values('2018000019','吴浪头',0,'信息与计算机','计算机科学与技术','1802',0)
insert into student values('2018000020','赵悼系',0,'信息与计算机','计算机科学与技术','1802',0)

insert into student values('2018000021','钟堡簿',0,'信息与计算机','计算机科学与技术','1803',0)
insert into student values('2018000022','秦璃骇',0,'信息与计算机','计算机科学与技术','1803',0)
insert into student values('2018000023','司溪煞',0,'信息与计算机','计算机科学与技术','1803',0)
insert into student values('2018000024','云车迸',0,'信息与计算机','计算机科学与技术','1803',0)
insert into student values('2018000025','孟巩遣',0,'信息与计算机','计算机科学与技术','1803',0)
insert into student values('2018000026','翁科狙',0,'信息与计算机','计算机科学与技术','1803',0)
insert into student values('2018000027','廉矗淡',0,'信息与计算机','计算机科学与技术','1803',0)
insert into student values('2018000028','元害依',0,'信息与计算机','计算机科学与技术','1803',0)
insert into student values('2018000029','卫八搔',0,'信息与计算机','计算机科学与技术','1803',0)
insert into student values('2018000030','甄肆侗',0,'信息与计算机','计算机科学与技术','1803',0)

insert into student values('2018000031','龙将裳',0,'经济管理','会计学','1801',0)
insert into student values('2018000032','景堂姨',0,'经济管理','会计学','1801',0)
insert into student values('2018000033','邢驳税',0,'经济管理','会计学','1801',0)
insert into student values('2018000034','翁呈妊',0,'经济管理','会计学','1801',0)
insert into student values('2018000035','武卤隙',0,'经济管理','会计学','1801',0)
insert into student values('2018000036','昌潍踩',0,'经济管理','会计学','1801',0)
insert into student values('2018000037','席上权',0,'经济管理','会计学','1801',0)
insert into student values('2018000038','蒋纺卵',0,'经济管理','会计学','1801',0)
insert into student values('2018000039','赵牡抢',0,'经济管理','会计学','1801',0)
insert into student values('2018000040','汤扫揪',0,'经济管理','会计学','1801',0)

insert into student values('2018000041','苏可缎',0,'电气与动力工程','电气工程自动化','1801',0)
insert into student values('2018000042','史纹寺',0,'电气与动力工程','电气工程自动化','1801',0)
insert into student values('2018000043','曹剐饺',0,'电气与动力工程','电气工程自动化','1801',0)
insert into student values('2018000044','马箍派',0,'电气与动力工程','电气工程自动化','1801',0)
insert into student values('2018000045','充甫惊',0,'电气与动力工程','电气工程自动化','1801',0)
insert into student values('2018000046','倪氮撤',0,'电气与动力工程','电气工程自动化','1801',0)
insert into student values('2018000047','褚究亭',0,'电气与动力工程','电气工程自动化','1801',0)
insert into student values('2018000048','宁放尧',0,'电气与动力工程','电气工程自动化','1801',0)
insert into student values('2018000049','钟世爷',0,'电气与动力工程','电气工程自动化','1801',0)
insert into student values('2018000050','瞿纫环',0,'电气与动力工程','电气工程自动化','1801',0)

insert into student values('2018000051','阎抢弗',0,'物理与光电工程','光电信息科学与工程','1801',0)
insert into student values('2018000052','章宦呕',0,'物理与光电工程','光电信息科学与工程','1801',0)
insert into student values('2018000053','岑幸喊',0,'物理与光电工程','光电信息科学与工程','1801',0)
insert into student values('2018000054','华凉嘎',0,'物理与光电工程','光电信息科学与工程','1801',0)
insert into student values('2018000055','任碳寻',0,'物理与光电工程','光电信息科学与工程','1801',0)
insert into student values('2018000056','武掀顶',0,'物理与光电工程','光电信息科学与工程','1801',0)
insert into student values('2018000057','武施兑',0,'物理与光电工程','光电信息科学与工程','1801',0)
insert into student values('2018000058','易憨拱',0,'物理与光电工程','光电信息科学与工程','1801',0)
insert into student values('2018000059','陈擅棠',0,'物理与光电工程','光电信息科学与工程','1801',0)
insert into student values('2018000060','景将茄',0,'物理与光电工程','光电信息科学与工程','1801',0)

insert into student values('2018000061','贺奔捍',0,'建筑与土木工程','建筑学','1801',0)
insert into student values('2018000062','汤麓猜',0,'建筑与土木工程','建筑学','1801',0)
insert into student values('2018000063','詹四未',0,'建筑与土木工程','建筑学','1801',0)
insert into student values('2018000064','孔庐稻',0,'建筑与土木工程','建筑学','1801',0)
insert into student values('2018000065','沈穿闷',0,'建筑与土木工程','建筑学','1801',0)
insert into student values('2018000066','幸蹦冬',0,'建筑与土木工程','建筑学','1801',0)
insert into student values('2018000067','祖垃比',0,'建筑与土木工程','建筑学','1801',0)
insert into student values('2018000068','蒋剩计',0,'建筑与土木工程','建筑学','1801',0)
insert into student values('2018000069','詹料溃',0,'建筑与土木工程','建筑学','1801',0)
insert into student values('2018000070','魏奖丧',0,'建筑与土木工程','建筑学','1801',0)

insert into student values('2018000071','鲁骚识',0,'经济管理','市场营销','1801',0)
insert into student values('2018000072','水吐瘸',0,'经济管理','市场营销','1801',0)
insert into student values('2018000073','龙焊铜',0,'经济管理','市场营销','1801',0)
insert into student values('2018000074','秦乱醒',0,'经济管理','市场营销','1801',0)
insert into student values('2018000075','符全纪',0,'经济管理','市场营销','1801',0)
insert into student values('2018000076','钟埃苯',0,'经济管理','市场营销','1801',0)
insert into student values('2018000077','叶处强',0,'经济管理','市场营销','1801',0)
insert into student values('2018000078','苏课泻',0,'经济管理','市场营销','1801',0)
insert into student values('2018000079','充短汉',0,'经济管理','市场营销','1801',0)
insert into student values('2018000080','薛咳付',0,'经济管理','市场营销','1801',0)

insert into student values('2018000081','郑枚剿',0,'经济管理','市场营销','1802',0)
insert into student values('2018000082','叶匣通',0,'经济管理','市场营销','1802',0)
insert into student values('2018000083','贺负胰',0,'经济管理','市场营销','1802',0)
insert into student values('2018000084','牛箔磕',0,'经济管理','市场营销','1802',0)
insert into student values('2018000085','祖猛鞘',0,'经济管理','市场营销','1802',0)
insert into student values('2018000086','李刃患',0,'经济管理','市场营销','1802',0)
insert into student values('2018000087','吉荒壤',0,'经济管理','市场营销','1802',0)
insert into student values('2018000088','仇丝堡',0,'经济管理','市场营销','1802',0)
insert into student values('2018000089','庄雅阂',0,'经济管理','市场营销','1802',0)
insert into student values('2018000090','翁酣长',0,'经济管理','市场营销','1802',0)

insert into student values('2018000091','吉赏粱',0,'数学','数学与应用数学','1801',0)
insert into student values('2018000092','云抗建',0,'数学','数学与应用数学','1801',0)
insert into student values('2018000093','殷谭舶',0,'数学','数学与应用数学','1801',0)
insert into student values('2018000094','贾眯井',0,'数学','数学与应用数学','1801',0)
insert into student values('2018000095','曹蔽圈',0,'数学','数学与应用数学','1801',0)
insert into student values('2018000096','甄惮菇',0,'数学','数学与应用数学','1801',0)
insert into student values('2018000097','水遥谦',0,'数学','数学与应用数学','1801',0)
insert into student values('2018000098','叶食防',0,'数学','数学与应用数学','1801',0)
insert into student values('2018000099','幸蜕蚜',0,'数学','数学与应用数学','1801',0)
insert into student values('2018000100','柳槐缺',0,'数学','数学与应用数学','1801',0)

insert into student values('2018000101','李雹暮',0,'信息与计算机','通信工程','1801',0)
insert into student values('2018000102','花玖豢',0,'信息与计算机','通信工程','1801',0)
insert into student values('2018000103','施膳杆',0,'信息与计算机','通信工程','1801',0)
insert into student values('2018000104','叶焊京',0,'信息与计算机','通信工程','1801',0)
insert into student values('2018000105','李湖光',0,'信息与计算机','通信工程','1801',0)
insert into student values('2018000106','昌鼻雇',0,'信息与计算机','通信工程','1801',0)
insert into student values('2018000107','王垦悉',0,'信息与计算机','通信工程','1801',0)
insert into student values('2018000108','牛思闲',0,'信息与计算机','通信工程','1801',0)
insert into student values('2018000109','安矗哦',0,'信息与计算机','通信工程','1801',0)
insert into student values('2018000110','曲帆呵',0,'信息与计算机','通信工程','1801',0)

insert into student values('2018000111','古室恍',0,'数学','统计学','1801',0)
insert into student values('2018000112','家巡隘',0,'数学','统计学','1801',0)
insert into student values('2018000113','孔吹氖',0,'数学','统计学','1801',0)
insert into student values('2018000114','家补把',0,'数学','统计学','1801',0)
insert into student values('2018000115','郝劝攀',0,'数学','统计学','1801',0)
insert into student values('2018000116','徐敛塘',0,'数学','统计学','1801',0)
insert into student values('2018000117','柏绕啊',0,'数学','统计学','1801',0)
insert into student values('2018000118','阎倒汞',0,'数学','统计学','1801',0)
insert into student values('2018000119','符士烁',0,'数学','统计学','1801',0)
insert into student values('2018000120','叶偿探',0,'数学','统计学','1801',0)

insert into student values('2018000121','党蜒慌',0,'建筑与土木工程','土木工程','1801',0)
insert into student values('2018000122','古夷护',0,'建筑与土木工程','土木工程','1801',0)
insert into student values('2018000123','古砂泊',0,'建筑与土木工程','土木工程','1801',0)
insert into student values('2018000124','景埂功',0,'建筑与土木工程','土木工程','1801',0)
insert into student values('2018000125','石挝堂',0,'建筑与土木工程','土木工程','1801',0)
insert into student values('2018000126','朱怒幕',0,'建筑与土木工程','土木工程','1801',0)
insert into student values('2018000127','姚屏急',0,'建筑与土木工程','土木工程','1801',0)
insert into student values('2018000128','费石屠',0,'建筑与土木工程','土木工程','1801',0)
insert into student values('2018000129','金串廖',0,'建筑与土木工程','土木工程','1801',0)
insert into student values('2018000130','苗粮兔',0,'建筑与土木工程','土木工程','1801',0)

insert into student values('2018000131','许息廊',0,'信息与计算机','物联网','1801',0)
insert into student values('2018000132','昌哀美',0,'信息与计算机','物联网','1801',0)
insert into student values('2018000133','史诵不',0,'信息与计算机','物联网','1801',0)
insert into student values('2018000134','杨逼努',0,'信息与计算机','物联网','1801',0)
insert into student values('2018000135','寿鼎咸',0,'信息与计算机','物联网','1801',0)
insert into student values('2018000136','葛郊谈',0,'信息与计算机','物联网','1801',0)
insert into student values('2018000137','柏宜短',0,'信息与计算机','物联网','1801',0)
insert into student values('2018000138','陆梁劳',0,'信息与计算机','物联网','1801',0)
insert into student values('2018000139','鲍苇等',0,'信息与计算机','物联网','1801',0)
insert into student values('2018000140','叶桶仪',0,'信息与计算机','物联网','1801',0)

insert into student values('2018000141','温忱模',0,'物理与光电工程','应用物理学','1801',0)
insert into student values('2018000142','元杭汲',0,'物理与光电工程','应用物理学','1801',0)
insert into student values('2018000143','阎肪滦',0,'物理与光电工程','应用物理学','1801',0)
insert into student values('2018000144','韦瓤瓢',0,'物理与光电工程','应用物理学','1801',0)
insert into student values('2018000145','金奴蠢',0,'物理与光电工程','应用物理学','1801',0)
insert into student values('2018000146','裴苟搏',0,'物理与光电工程','应用物理学','1801',0)
insert into student values('2018000147','席狡菩',0,'物理与光电工程','应用物理学','1801',0)
insert into student values('2018000148','鲁恕亥',0,'物理与光电工程','应用物理学','1801',0)
insert into student values('2018000149','幸笔北',0,'物理与光电工程','应用物理学','1801',0)
insert into student values('2018000150','花宜攀',0,'物理与光电工程','应用物理学','1801',0)

/* 研究生 */
insert into student values('2018001001','施形脯',0,'信息与计算机','计算机科学与技术',null,1)
insert into student values('2018001002','仇懦顾',0,'信息与计算机','计算机科学与技术',null,1)
insert into student values('2018001003','余范畔',0,'信息与计算机','计算机科学与技术',null,1)
insert into student values('2018001004','曲噶炕',0,'信息与计算机','计算机科学与技术',null,1)
insert into student values('2018001005','曹酶姆',0,'信息与计算机','计算机科学与技术',null,1)
insert into student values('2018001006','华签热',0,'信息与计算机','计算机科学与技术',null,1)
insert into student values('2018001007','翁廖钳',0,'信息与计算机','计算机科学与技术',null,1)
insert into student values('2018001008','向司吹',0,'信息与计算机','计算机科学与技术',null,1)
insert into student values('2018001009','金翘氯',0,'信息与计算机','计算机科学与技术',null,1)
insert into student values('2018001010','昌等呕',0,'信息与计算机','计算机科学与技术',null,1)


/* 教员 */
delete from instructor

insert into instructor values('10001','何痞降','电气与动力工程','教授',57144)
insert into instructor values('10002','花卤氓','电气与动力工程','副教授',41518)
insert into instructor values('10003','吴极谴','电气与动力工程','副教授',38108)
insert into instructor values('10004','朱迸挤','电气与动力工程','教员',35945)
insert into instructor values('10005','党叫纬','电气与动力工程','教员',30054)

insert into instructor values('10006','包苇帘','建筑与土木工程','教授',51933)
insert into instructor values('10007','魏韦筏','建筑与土木工程','副教授',49502)
insert into instructor values('10008','苏竿当','建筑与土木工程','副教授',44517)
insert into instructor values('10009','路霜厦','建筑与土木工程','教员',31604)
insert into instructor values('10010','家皇犀','建筑与土木工程','教员',27131)

insert into instructor values('10011','家本票','经济管理','教授',58131)
insert into instructor values('10012','仇锭欠','经济管理','副教授',45476)
insert into instructor values('10013','祖寄锨','经济管理','副教授',41631)
insert into instructor values('10014','充锌食','经济管理','教员',34092)
insert into instructor values('10015','郝贝叮','经济管理','教员',26608)

insert into instructor values('10016','殷鸦凡','数学','教授',59194)
insert into instructor values('10017','林鸵困','数学','副教授',56118)
insert into instructor values('10018','陈俺逼','数学','副教授',41024)
insert into instructor values('10019','贺姚鞋','数学','教员',30598)
insert into instructor values('10020','汤铜肮','数学','教员',25512)

insert into instructor values('10021','俞拇矮','物理与光电工程','教授',54983)
insert into instructor values('10022','章先胃','物理与光电工程','副教授',44000)
insert into instructor values('10023','封饯瑟','物理与光电工程','副教授',37115)
insert into instructor values('10024','石推袄','物理与光电工程','教员',32633)
insert into instructor values('10025','何墒孪','物理与光电工程','教员',35193)

insert into instructor values('10026','温畅谴','信息与计算机','教授',64004)
insert into instructor values('10027','江急澜','信息与计算机','副教授',53104)
insert into instructor values('10028','余霉霞','信息与计算机','副教授',38769)
insert into instructor values('10029','郑涂籍','信息与计算机','教员',34640)
insert into instructor values('10030','党际医','信息与计算机','教员',33619)

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
insert into instructor values('20001','任贤失','电气与动力工程','系主任',81117)
insert into instructor values('20002','葛朔苇','建筑与土木工程','系主任',77004)
insert into instructor values('20003','古府脖','经济管理','系主任',70853)
insert into instructor values('20004','姜签纳','数学','系主任',83802)
insert into instructor values('20005','顾苛乔','物理与光电工程','系主任',80254)
insert into instructor values('20006','金纠矾','信息与计算机','系主任',89517)

/* section */
delete from section

insert into section values('00001', '1', 'Fall', 2020, null, null, 1,1);
insert into section values('00001', '2', 'Spring', 2020, null, null, 6,4);

insert into section values('00002', '1', 'Spring', 2020, '行逸楼', '103', 5,3);
insert into section values('00002', '2', 'Fall', 2020, '行逸楼', '103', 7,4);

insert into section values('10001', '1', 'Spring', 2020, '行勉楼', '103', 5,1);
insert into section values('10001', '2', 'Fall', 2020, '行勉楼', '205', 4,2);

insert into section values('10002', '1', 'Spring', 2020, '行远楼', '203', 4,1);
insert into section values('10002', '2', 'Fall', 2020, '行远楼', '104', 1,4);

insert into section values('10003', '1', 'Spring', 2020, '行勉楼', '103', 6,3);
insert into section values('10003', '2', 'Fall', 2020, '行知楼', '104', 8,2);

insert into section values('10004', '1', 'Spring', 2020, '行远楼', '103', 3,3);
insert into section values('10004', '2', 'Fall', 2020, '行知楼', '204', 4,4);

insert into section values('10005', '1', 'Spring', 2020, '行远楼', '103', 3,2);
insert into section values('10005', '2', 'Fall', 2020, '行勉楼', '202', 4,3);

insert into section values('10006', '1', 'Spring', 2020, '行勉楼', '103', 1,5);
insert into section values('10006', '2', 'Fall', 2020, '行勉楼', '104', 7,3);

insert into section values('10007', '1', 'Spring', 2020, '行知楼', '102', 5,5);
insert into section values('10007', '2', 'Fall', 2020, '行知楼', '205', 8,5);

insert into section values('10008', '1', 'Spring', 2020, '行远楼', '202', 1,3);
insert into section values('10008', '2', 'Fall', 2020, '行勉楼', '104', 1,2);


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
insert into prereq values('10001','10002')	--数据结构<-C语言
insert into prereq values('10003','10002')	--面向对象<-C语言
insert into prereq values('10004','10001')	--计算机网络<-数据结构
insert into prereq values('10005','10001')	--操作系统<-数据结构
insert into prereq values('10006','10001')	--数据库<-数据结构
insert into prereq values('10006','50003')	--数据库<-离散数学
insert into prereq values('10007','10001')	--计组<-数据结构
insert into prereq values('60005','60002')	--电动力学<-力学
insert into prereq values('60006','60002')	--量子力学<-力学


/* class_section */
insert into class_section values('1801','计算机科学与技术','10002','1','Spring',2020)
insert into class_section values('1801','计算机科学与技术','10001','1','Spring',2020)
insert into class_section values('1801','计算机科学与技术','10003','1','Spring',2020)
insert into class_section values('1801','计算机科学与技术','10004','2','Fall',2020)
insert into class_section values('1801','计算机科学与技术','10005','2','Fall',2020)
insert into class_section values('1801','计算机科学与技术','10006','1','Spring',2020)
insert into class_section values('1801','计算机科学与技术','10007','1','Spring',2020)
insert into class_section values('1801','计算机科学与技术','10008','1','Spring',2020)


insert into class_section values('1802','计算机科学与技术','10001','2','Fall',2020)
insert into class_section values('1802','计算机科学与技术','10002','2','Fall',2020)
insert into class_section values('1802','计算机科学与技术','10003','2','Fall',2020)
insert into class_section values('1802','计算机科学与技术','10004','2','Fall',2020)
insert into class_section values('1802','计算机科学与技术','10005','2','Fall',2020)
insert into class_section values('1802','计算机科学与技术','10006','2','Fall',2020)
insert into class_section values('1802','计算机科学与技术','10007','2','Fall',2020)
insert into class_section values('1802','计算机科学与技术','10008','2','Fall',2020)


insert into class_section values('1803','计算机科学与技术','10001','1','Spring',2020)
insert into class_section values('1803','计算机科学与技术','10002','2','Fall',2020)
insert into class_section values('1803','计算机科学与技术','10003','1','Spring',2020)
insert into class_section values('1803','计算机科学与技术','10004','1','Spring',2020)
insert into class_section values('1803','计算机科学与技术','10005','2','Fall',2020)
insert into class_section values('1803','计算机科学与技术','10006','2','Fall',2020)
insert into class_section values('1803','计算机科学与技术','10007','1','Spring',2020)
insert into class_section values('1803','计算机科学与技术','10008','2','Fall',2020)


/* 随机成绩 */
update takes set grade = round(50*CONVERT(BIGINT,RIGHT(ABS(CHECKSUM(NEWID())),9))*0.1/100000000,0)+50
where grade is null