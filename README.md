# 大学教务管理系统设计
课程项目，没什么技术含量。

利用Web技术，实现对大学教务系统数据库的可视化，并且实现查询老师课表，查询班级课表，查询教室课表，查询学生课表，查询班级成绩和查询学生成绩等功能。
### 环境要求
1.	Windows 10
2.	SQL Sever Management Studio 2008
3.	Java 1.8.0_202
4.	IDE：Eclipse for Java EE
5.	Apache Tomcat 8.5
6.	mssql-jdbc-8.4.1.jre8.jar

### 使用说明
1.	首先利用DDL.sql文件建立数据库，并利用相应的sql创建触发器和函数，然后使用相应的sql文件插入数据。
2.	修改数据库默认用户sa的密码。
3.	将Web项目导入Eclipse。
4.	将JDBC对应的jar包导入项目的依赖库中。
5.	配置项目中WebContent/MATE-INF/context.xml文件，按照文件中所给的注释，修改数据库URL，用户名和密码，如果使用默认用户sa，可以只修改密码。如果修改了数据库资源名称，还需要修改WebContent/WEB-INF/web.xml文件和src/tyut.connect包中的ConnectionPool.java，具体修改方式在程序的注释中已经标明。
6.	完成以上步骤之后，启动项目，在浏览器中输入localhost:8080/University_EAMS进行访问。如果项目启动失败，请检查8080端口是否被占用；如果访问不到界面，请检查tomcat是否在8080端口启动。
