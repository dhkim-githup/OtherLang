# Title  :
# 작성자 : 류종택
# 작성일 : 2004년 6월 24일


Create Table STCode01 (

  SN                         Int                 Not Null Auto_Increment,
  Caption                    varchar(16)         ,

  Primary Key (SN)

);


Insert into STCode01 (SN, Caption) values (0, '완납');
Insert into STCode01 (SN, Caption) values (1, '차납');
Insert into STCode01 (SN, Caption) values (2, '미납');
Insert into STCode01 (SN, Caption) values (3, '대기');
Insert into STCode01 (SN, Caption) values (4, '누락');

