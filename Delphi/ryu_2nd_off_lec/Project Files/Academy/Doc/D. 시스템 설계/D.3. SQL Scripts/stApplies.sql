# Title  :
# �ۼ��� : ������
# �ۼ��� : 2004�� 6�� 24��


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

