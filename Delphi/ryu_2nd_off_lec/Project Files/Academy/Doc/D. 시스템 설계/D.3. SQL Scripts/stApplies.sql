# Title  :
# 작성자 : 류종택
# 작성일 : 2004년 6월 24일


Create Table STApplies (

  SN                         Int                 Not Null Auto_Increment,
  ClassNo                    Int                 ,
  UserName                   varchar(32)         ,
  Mobile                     varchar(16)         ,
  EMail                      varchar(64)         ,
  StatusCode                 int                 Default 2,

  Primary Key (SN)

);


Create Index SIApplies01 on STApplies (ClassNo);

