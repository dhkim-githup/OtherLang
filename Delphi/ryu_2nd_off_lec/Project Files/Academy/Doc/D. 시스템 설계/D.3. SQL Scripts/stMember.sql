# Title  :
# 작성자 : 류종택
# 작성일 : 2004년 6월 24일


Create Table STMember (

  EMail                      varchar(64)         Not Null,
  UserName                   varchar(32)         ,
  Mobile                     varchar(16)         ,

  Primary Key (EMail)

);


Create Index SIMember01 on STMember (UserName);

