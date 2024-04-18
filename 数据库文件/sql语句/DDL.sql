/*实体集定义*/
create table department(	--系
	dept_name		varchar(20) primary key, 
	building		varchar(15), 
	budget		    numeric(12,2) check (budget > 0),
);

create table instructor(	--老师
	ID				varchar(5) primary key, 
	name			varchar(20) not null, 
	dept_name		varchar(20) references department on delete set null, 
	title			varchar(20),
	salary			numeric(8,2) check (salary > 0),
);

alter table department
add dean_id varchar(5) references instructor on delete set null

create table classroom(	--教室
	building		varchar(15),
	room_number		varchar(7),
	capacity		numeric(4,0),
	primary key (building, room_number)
);

create table major(		--专业
	major_name		varchar(20) primary key,
	dept_name		varchar(20) references department on delete set null,
);

create table class(		--班级
	class_id		varchar(4),
	size			smallint check (size>=0),
	major_name		varchar(20) references major on delete cascade,
	primary key(major_name, class_id)
);

create table student(	--学生
	ID				varchar(10) primary key,
	name			varchar(20) not null,
	tot_cred		numeric(3,0) check (tot_cred >= 0),
	dept_name		varchar(20) references department on delete set null,
	major_name		varchar(20),
	class_id		varchar(4),
	graduated		int check(graduated=1 or graduated=0),	-- 1表示研究生，0表示本科生
	foreign key(major_name,class_id) references class on delete set null,
);

create table course(	--课程
	course_id		varchar(8) primary key, 
	title			varchar(50), 
	dept_name		varchar(20) references department on delete set null,
	credits			numeric(2,0) check (credits > 0),
);

create table time_slot(	--时间段
	time_slot_id	smallint check(time_slot_id>=1 and time_slot_id<=10),
	day				smallint	check(day>=1 and day <=7),
	start_hr		numeric(2) check (start_hr >= 0 and start_hr < 24),
	start_min		numeric(2) check (start_min >= 0 and start_min < 60),
	end_hr			numeric(2) check (end_hr >= 0 and end_hr < 24),
	end_min			numeric(2) check (end_min >= 0 and end_min < 60),
	primary key (time_slot_id, day)
);

create table section(	--课程段
	course_id		varchar(8) references course on delete cascade,
	sec_id			varchar(8),
	semester		varchar(6) check (semester in ('Fall', 'Winter', 'Spring', 'Summer')), 
	year			numeric(4,0) check (year > 1900 and year < 2100), 
	building		varchar(15),
	room_number		varchar(7),
	time_slot_id	smallint,
	day				smallint,
	
	primary key (course_id, sec_id, semester, year),
	foreign key (building, room_number) references classroom on delete set null,
	foreign key(time_slot_id, day) references time_slot on delete set null,
);



/*关系集定义*/
create table takes(		--选课：学生---课程段section
	ID				varchar(10) references student on delete cascade, 
	course_id		varchar(8),
	sec_id			varchar(8), 
	semester		varchar(6),
	year			numeric(4,0),
	grade		    numeric(3,0) check(grade>=10 and grade <=100),
	primary key (ID, course_id, sec_id, semester, year),
	foreign key (course_id,sec_id, semester, year) references section on delete cascade,
);

create table teaches(	--教课：老师---课程段section
	ID				varchar(5) references instructor on delete cascade, 
	course_id		varchar(8),
	sec_id			varchar(8), 
	semester		varchar(6),
	year			numeric(4,0),
	primary key (ID, course_id, sec_id, semester, year),
	foreign key (course_id,sec_id, semester, year) references section on delete cascade,
);

create table advisor(	--指导：老师--->学生
	s_ID			varchar(10) references student(ID) on delete cascade,
	i_ID			varchar(5) references instructor(ID) on delete set null,
	primary key (s_ID),
);

create table prereq(	--先修课程：课程---课程
	course_id		varchar(8) references course on delete cascade,
	prereq_id		varchar(8) references course,
	primary key (course_id, prereq_id),
);

create table class_section( --班级选课：班级---课程
	class_id		varchar(4),
	major_name		varchar(20),
	course_id		varchar(8),
	sec_id			varchar(8), 
	semester		varchar(6),
	year			numeric(4,0),
	primary key(major_name,class_id,course_id,sec_id,semester,year),
	foreign key(course_id,sec_id, semester, year) references section on delete cascade,
	foreign key(major_name,class_id) references class on delete cascade,
);