# Title  :
# 작성자 : 류종택
# 작성일 : 2004년 6월 24일


Create Table STClasses (

  SN                         Int                 Not Null Auto_Increment,
  TDate                      char(10)            ,
  Title                      varchar(128)        ,
  Memo                       Text                ,
  Capacity                   Int                 Default 0,
  StatusCode                 Int                 Default 0,

  Primary Key (SN)

);

