-- 创建数据库
create database TeachAssist;
use TeachAssist

-- 创建学生表
drop table dbo.students
create table students
(
  id varchar(50) primary key,
  name nvarchar(50) not null,
  homecity nvarchar(50),
  telephone varchar(20),
  state int default 1,
  tiwen_cishu int default 0,  -- 冗余
  tiwen_fenshu int default 0, -- 冗余
  gno int
);


SELECT TOP (1000) [name]
      ,[value]
      ,[category]
      ,[type]
  FROM [TeachAssist].[dbo].[parameters];

  update parameters set [value] = 1 where name = 'defaultMenuIndex'

  alter table students add telephone varchar(20);

alter table students DROP COLUMN telphone;


delete from dbo.students

insert into students (name, id, homecity) values ('韩先午','00200518007','江西赣州');
insert into students (name, id, homecity) values ('薛有彬','00200518008','江西赣州');
insert into students (name, id, homecity) values ('钟林海','00200518027','湖南娄底');
insert into students (name, id, homecity) values ('李学文','00200518030','江西宜春');
insert into students (name, id, homecity) values ('周晓乐','00200518040','广东江门');
insert into students (name, id, homecity) values ('彭邦栋','00200518050','江西赣州');
insert into students (name, id, homecity) values ('郭松鹏','10170901229','河南平顶山');
insert into students (name, id, homecity) values ('陈永旺','00200518058','江西上饶');
insert into students (name, id, homecity) values ('黎绍伟','00200518065','广西贵港');
insert into students (name, id, homecity) values ('梁恩宁','00200518069','广东阳江');
insert into students (name, id, homecity) values ('李晓辉','00200803047','广东茂名');
insert into students (name, id, homecity) values ('蔡正旺','00200721001','江西上饶');
insert into students (name, id, homecity) values ('李天娇','00200824057','广西梧州');
insert into students (name, id, homecity) values ('杨正进','00200803004','江西上饶');
insert into students (name, id, homecity) values ('覃秋菊','00200803008','广西河池');
insert into students (name, id, homecity) values ('钟宇杨','00200803025','江西萍乡');
insert into students (name, id, homecity) values ('高雁','00200803041','江西赣州');
insert into students (name, id, homecity) values ('陈展群','00200803037','广东阳江');
insert into students (name, id, homecity) values ('陈智源','00200803038','广东阳江');
insert into students (name, id, homecity) values ('李远源','00200803039','unkonwn');
insert into students (name, id, homecity) values ('黄远坤','00200803019','广东河源');
insert into students (name, id, homecity) values ('张豪','10170901178','湖南岳阳');
insert into students (name, id, homecity) values ('黎文薪','00200803029','广东梅州');
insert into students (name, id, homecity) values ('卢传君','00200803026','广西玉林');
insert into students (name, id, homecity) values ('黄必旺','00200803027','广西河池');
insert into students (name, id, homecity) values ('唐海','10170901279','湖南邵阳');
insert into students (name, id, homecity) values ('欧阳轩','10170901263','湖南邵阳');
insert into students (name, id, homecity) values ('郑钧洹','00200824016','广东湛江');
insert into students (name, id, homecity) values ('杨程翔','10170901272','广东珠海');
insert into students (name, id, homecity) values ('欧阳华健','10170901316','南邵阳');
insert into students (name, id, homecity) values ('刘少钦'	,'10180901169', '湖北荆门');
insert into students (name, id, homecity) values ('唐迪'	,'10180901003', '广东清远');
insert into students (name, id, homecity) values ('秦汉'	,'10180901119', '安徽淮南');
insert into students (name, id, homecity) values ('吴标',	'10180901120', '广西贵港');

SELECT * FROM dbo.students

alter table students add duyin Varchar (20) null --添加一列




-- 添加组表
create table groups
(
  gno int primary key,
  stuid varchar(50),
  slogan varchar(200)
);

select * from dbo.groups

drop table dbo.parameters

-- 存储系统参数
create table parameters
(
  name varchar(200) not null,
  value varchar(200) not null,
  category varchar(200) not null default 'misc',
  type int not null default 1
);
insert into parameters (name, value) values ('defaultMenuIndex', '1');
insert into parameters (name, value) values ('autoRollInterval', '2000');
insert into parameters (name, value) values ('avatarDir', 'D:/Workdir/avatars'); --图片路径

SELECT * FROM  dbo.parameters


-- 添加提问记录表
create table tiwen
(
   id int identity primary key,
   stuid varchar(50),
   score int,
   created_at datetime default getdate()
);

-- 清空分数
update students set tiwen_cishu = 0, tiwen_fenshu=0;
delete from tiwen;
