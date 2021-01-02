# MySQL-Front Dump 2.5
#
# Host: localhost   Database: academy
# --------------------------------------------------------
# Server version 4.0.20a-nt


#
# Table structure for table 'stapplies'
#

CREATE TABLE stapplies (
  SN int(11) NOT NULL auto_increment,
  ClassNo int(11) default NULL,
  UserName varchar(32) default NULL,
  Mobile varchar(16) default NULL,
  EMail varchar(64) default NULL,
  StatusCode int(11) default '2',
  PRIMARY KEY  (SN),
  KEY SIApplies01 (ClassNo)
) TYPE=MyISAM;



#
# Dumping data for table 'stapplies'
#

INSERT INTO stapplies VALUES("1", "2", "����", "", NULL, "0");
INSERT INTO stapplies VALUES("2", "2", "cetauri", NULL, NULL, "0");
INSERT INTO stapplies VALUES("3", "2", "����", NULL, NULL, "0");
INSERT INTO stapplies VALUES("4", "2", "�ܿ�ٴ�", NULL, NULL, "0");
INSERT INTO stapplies VALUES("5", "2", "��", NULL, NULL, "0");
INSERT INTO stapplies VALUES("6", "2", "����e", NULL, NULL, "0");
INSERT INTO stapplies VALUES("7", "2", "�������", NULL, NULL, "0");
INSERT INTO stapplies VALUES("8", "2", "carpa", NULL, NULL, "0");
INSERT INTO stapplies VALUES("9", "2", "�ڹ���", NULL, NULL, "0");
INSERT INTO stapplies VALUES("10", "2", "da_answer", NULL, NULL, "0");
INSERT INTO stapplies VALUES("11", "2", "����", NULL, NULL, "0");
INSERT INTO stapplies VALUES("12", "2", "��ȿ��", NULL, NULL, "0");
INSERT INTO stapplies VALUES("13", "2", "guy209", NULL, NULL, "0");
INSERT INTO stapplies VALUES("14", "2", "jaemin-manse", NULL, NULL, "0");
INSERT INTO stapplies VALUES("15", "2", "lookNfeel", NULL, NULL, "0");
INSERT INTO stapplies VALUES("16", "2", "�ֻ�ö", NULL, NULL, "4");
INSERT INTO stapplies VALUES("17", "2", "�ʱ׸�", NULL, NULL, "0");
INSERT INTO stapplies VALUES("18", "2", "�ڽ���", NULL, NULL, "0");
INSERT INTO stapplies VALUES("19", "2", "�ø�", NULL, NULL, "1");
INSERT INTO stapplies VALUES("20", "2", "����¯", NULL, NULL, "0");
INSERT INTO stapplies VALUES("21", "2", "�Ҹ���", NULL, NULL, "1");
INSERT INTO stapplies VALUES("22", "2", "���", NULL, NULL, "3");
INSERT INTO stapplies VALUES("23", "2", "�ӽ�", NULL, NULL, "3");
INSERT INTO stapplies VALUES("24", "2", "�ӽ� ģ����", NULL, NULL, "3");
INSERT INTO stapplies VALUES("25", "2", "dklsk", NULL, NULL, "3");
INSERT INTO stapplies VALUES("27", "3", "���Ƽ�", NULL, NULL, "0");
INSERT INTO stapplies VALUES("28", "3", "���뱸", NULL, NULL, "0");
INSERT INTO stapplies VALUES("29", "3", "�̼���", NULL, NULL, "0");
INSERT INTO stapplies VALUES("30", "3", "�Σ֣ңӣԣϣ�", NULL, NULL, "0");



#
# Table structure for table 'stclasses'
#

CREATE TABLE stclasses (
  SN int(11) NOT NULL auto_increment,
  TDate varchar(10) default NULL,
  Title varchar(128) default NULL,
  Memo text,
  Capacity int(11) default '0',
  StatusCode int(11) default '0',
  PRIMARY KEY  (SN)
) TYPE=MyISAM;



#
# Dumping data for table 'stclasses'
#

INSERT INTO stclasses VALUES("2", "2004.06.27", "�� 2ȸ �������� ���� - Delphi", "�ð� : 2004�� 6�� 27��, ���� 3�ú��� 6��\r\nȸ�� : ���� (����Ʈ�� ����, ���Ϸ� ����)\r\n��� : ��Ʈ�������� <a href=http://www.toz.co.kr/plus/map.htm target=Mblank>http://www.toz.co.kr/plus/map.htm</a>\r\n���ǳ��� : ������ ���α׷��� �����ϱ�\r\n  1. �޸��� �����\r\n  2. ������ ����ȯ�� �����ϱ�\r\n  3. ������ �ҽ��ڵ� ���� ���\r\n  4. ������ ������Ʈ�� ������ ����\r\n  5. Event Driven Programming\r\n  6. Database Programming �ǽ�\r\n     - ��û�� ������ �ٸ� �������� ��ü ����\r\n\r\n* ����ó\r\n   - ������ : ������ - 9897 - 0658\r\n   - �ڼ��� : ������ - 9870 - 2788", "20", "1");
INSERT INTO stclasses VALUES("3", "2004.07.04", "�� 3ȸ �������� ���� - Delphi", "�ǽ� �� �ٷ� ������ ��ȭ����Ʈ���� ����ϴ� ���� �ø��� ���α׷��Դϴ�..\r\n(���� : <a href=http://www.i-sfi.com/photoshot/ target=_blank>http://www.i-sfi.com/photoshot/</a>)\r\n\r\n�ð� : 7�� 4�� ���� 2�ú��� 6��\r\n��� : TOZ ��Ʈ�������� (<a href=http://www.toz.co.kr/plus/map.htm target=_blank>http://www.toz.co.kr/plus/map.htm</a>) \r\n\r\n\r\nȸ�� : 2���� (2�� ����� ���� �п� ���ؼ� ���� �Ȱڽ��ϴ�) \r\n�Աݹ�� : ��������, 814302-04-067136, ��μ� \r\n  - ������ 20����� ���� �޽��ϴ�. \r\n  - ȯ�ҿ�û�� 50%�� ���޵˴ϴ�. \r\n  - ��û������ 20���� ������ �е��� 100% ȯ�ҵ˴ϴ�. \r\n\r\n* �ҽ� �� ���� �ڷ�� ������ �����е鲲�� �����Ӱ� ����Ͻõ�.. \r\n  �������� ������ ���մϴ�.. \r\n\r\n* ����ó \r\n   - ������ : ������ - 9897 - 0658 \r\n   - �ڼ��� : ������ - 9870 - 2788", "20", "0");


#
# Table structure for table 'stcode01'
#

CREATE TABLE stcode01 (
  SN int(11) NOT NULL auto_increment,
  Caption varchar(16) default NULL,
  PRIMARY KEY  (SN)
) TYPE=MyISAM;



#
# Dumping data for table 'stcode01'
#

INSERT INTO stcode01 VALUES("0", "�ϳ�");
INSERT INTO stcode01 VALUES("2", "�̳�");
INSERT INTO stcode01 VALUES("3", "���");
INSERT INTO stcode01 VALUES("4", "����");
INSERT INTO stcode01 VALUES("1", "����");


#
# Table structure for table 'stcode02'
#

CREATE TABLE stcode02 (
  SN int(11) NOT NULL auto_increment,
  Caption varchar(16) default NULL,
  PRIMARY KEY  (SN)
) TYPE=MyISAM;



#
# Dumping data for table 'stcode02'
#

INSERT INTO stcode02 VALUES("0", "������");
INSERT INTO stcode02 VALUES("1", "�����Ϸ�");


#
# Table structure for table 'stmember'
#

CREATE TABLE stmember (
  EMail varchar(64) NOT NULL default '',
  UserName varchar(32) default NULL,
  Mobile varchar(16) default NULL,
  PRIMARY KEY  (EMail),
  KEY SIMember01 (UserName)
) TYPE=MyISAM;



#
# Dumping data for table 'stmember'
#
