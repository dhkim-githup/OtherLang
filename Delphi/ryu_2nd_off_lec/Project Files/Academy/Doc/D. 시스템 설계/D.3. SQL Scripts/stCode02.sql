# Title  :
# 작성자 : 류종택
# 작성일 : 2004년 6월 24일


Create Table STCode02 (

  SN                         Int                 Not Null Auto_Increment,
  Caption                    varchar(16)         ,

  Primary Key (SN)

);


Insert into STCode02 (SN, Caption) values (0, '접수중');
Insert into STCode02 (SN, Caption) values (1, '예약완료');

