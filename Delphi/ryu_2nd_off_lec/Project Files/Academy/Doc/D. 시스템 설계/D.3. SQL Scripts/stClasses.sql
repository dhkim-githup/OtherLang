# Title  :
# �ۼ��� : ������
# �ۼ��� : 2004�� 6�� 24��


Create Table STClasses (

  SN                         Int                 Not Null Auto_Increment,
  TDate                      char(10)            ,
  Title                      varchar(128)        ,
  Memo                       Text                ,
  Capacity                   Int                 Default 0,
  StatusCode                 Int                 Default 0,

  Primary Key (SN)

);

