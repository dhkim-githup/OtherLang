# Title  :
# �ۼ��� : ������
# �ۼ��� : 2004�� 6�� 24��


Create Table STMember (

  EMail                      varchar(64)         Not Null,
  UserName                   varchar(32)         ,
  Mobile                     varchar(16)         ,

  Primary Key (EMail)

);


Create Index SIMember01 on STMember (UserName);

