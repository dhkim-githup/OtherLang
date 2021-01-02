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

INSERT INTO stapplies VALUES("1", "2", "꿍이", "", NULL, "0");
INSERT INTO stapplies VALUES("2", "2", "cetauri", NULL, NULL, "0");
INSERT INTO stapplies VALUES("3", "2", "윤발", NULL, NULL, "0");
INSERT INTO stapplies VALUES("4", "2", "겨울바다", NULL, NULL, "0");
INSERT INTO stapplies VALUES("5", "2", "탱", NULL, NULL, "0");
INSERT INTO stapplies VALUES("6", "2", "까툴e", NULL, NULL, "0");
INSERT INTO stapplies VALUES("7", "2", "명랑폐인", NULL, NULL, "0");
INSERT INTO stapplies VALUES("8", "2", "carpa", NULL, NULL, "0");
INSERT INTO stapplies VALUES("9", "2", "박물관", NULL, NULL, "0");
INSERT INTO stapplies VALUES("10", "2", "da_answer", NULL, NULL, "0");
INSERT INTO stapplies VALUES("11", "2", "깡재", NULL, NULL, "0");
INSERT INTO stapplies VALUES("12", "2", "송효진", NULL, NULL, "0");
INSERT INTO stapplies VALUES("13", "2", "guy209", NULL, NULL, "0");
INSERT INTO stapplies VALUES("14", "2", "jaemin-manse", NULL, NULL, "0");
INSERT INTO stapplies VALUES("15", "2", "lookNfeel", NULL, NULL, "0");
INSERT INTO stapplies VALUES("16", "2", "최상철", NULL, NULL, "4");
INSERT INTO stapplies VALUES("17", "2", "필그림", NULL, NULL, "0");
INSERT INTO stapplies VALUES("18", "2", "코스모", NULL, NULL, "0");
INSERT INTO stapplies VALUES("19", "2", "시리", NULL, NULL, "1");
INSERT INTO stapplies VALUES("20", "2", "히메짱", NULL, NULL, "0");
INSERT INTO stapplies VALUES("21", "2", "소리로", NULL, NULL, "1");
INSERT INTO stapplies VALUES("22", "2", "써비", NULL, NULL, "3");
INSERT INTO stapplies VALUES("23", "2", "넛스", NULL, NULL, "3");
INSERT INTO stapplies VALUES("24", "2", "넛스 친구님", NULL, NULL, "3");
INSERT INTO stapplies VALUES("25", "2", "dklsk", NULL, NULL, "3");
INSERT INTO stapplies VALUES("27", "3", "김훈섭", NULL, NULL, "0");
INSERT INTO stapplies VALUES("28", "3", "조용구", NULL, NULL, "0");
INSERT INTO stapplies VALUES("29", "3", "이성규", NULL, NULL, "0");
INSERT INTO stapplies VALUES("30", "3", "ＮＶＲＳＴＯＰ", NULL, NULL, "0");



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

INSERT INTO stclasses VALUES("2", "2004.06.27", "제 2회 오프라인 강좌 - Delphi", "시간 : 2004년 6월 27일, 오후 3시부터 6시\r\n회비 : 만원 (프린트물 없음, 파일로 전달)\r\n장소 : 아트레온토즈 <a href=http://www.toz.co.kr/plus/map.htm target=Mblank>http://www.toz.co.kr/plus/map.htm</a>\r\n강의내용 : 델파이 프로그래밍 시작하기\r\n  1. 메모장 만들기\r\n  2. 델파이 개발환경 이해하기\r\n  3. 델파이 소스코드 관리 방법\r\n  4. 델파이 콤포넌트의 종류와 이해\r\n  5. Event Driven Programming\r\n  6. Database Programming 실습\r\n     - 요청이 있으면 다른 내용으로 대체 가능\r\n\r\n* 연락처\r\n   - 류종택 : 공일일 - 9897 - 0658\r\n   - 박성훈 : 공일일 - 9870 - 2788", "20", "1");
INSERT INTO stclasses VALUES("3", "2004.07.04", "제 3회 오프라인 강좌 - Delphi", "실습 시 다룰 주제는 인화사이트에서 사용하는 사진 올리는 프로그램입니다..\r\n(참고 : <a href=http://www.i-sfi.com/photoshot/ target=_blank>http://www.i-sfi.com/photoshot/</a>)\r\n\r\n시간 : 7월 4일 오후 2시부터 6시\r\n장소 : TOZ 아트레온토즈 (<a href=http://www.toz.co.kr/plus/map.htm target=_blank>http://www.toz.co.kr/plus/map.htm</a>) \r\n\r\n\r\n회비 : 2만원 (2차 비용은 남는 분에 한해서 따로 걷겠습니다) \r\n입금방법 : 국민은행, 814302-04-067136, 김민선 \r\n  - 선착순 20명까지 접수 받습니다. \r\n  - 환불요청시 50%만 지급됩니다. \r\n  - 신청순번이 20번이 넘으신 분들은 100% 환불됩니다. \r\n\r\n* 소스 및 강의 자료는 수강자 여러분들께서 자유롭게 사용하시되.. \r\n  공개적인 배포는 금합니다.. \r\n\r\n* 연락처 \r\n   - 류종택 : 공일일 - 9897 - 0658 \r\n   - 박성훈 : 공일일 - 9870 - 2788", "20", "0");


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

INSERT INTO stcode01 VALUES("0", "완납");
INSERT INTO stcode01 VALUES("2", "미납");
INSERT INTO stcode01 VALUES("3", "대기");
INSERT INTO stcode01 VALUES("4", "누락");
INSERT INTO stcode01 VALUES("1", "차납");


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

INSERT INTO stcode02 VALUES("0", "접수중");
INSERT INTO stcode02 VALUES("1", "접수완료");


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
