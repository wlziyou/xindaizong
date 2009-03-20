CREATE TABLE d21xm(       --项目基本信息表
f21xmbh	CHAR(16)	PRIMARY KEY  NOT NULL,	--项目编号
f21khbh	CHAR(16)	NOT NULL  REFERENCES d01fr(f01khbh),	--信贷客户编号
f21xmmc	VARCHAR2(40)	NOT NULL,	--项目名称
f21szd	VARCHAR2(40),			--项目所在地
f21hy	INT		NOT NULL,		--所属行业
f21lxwh	CHAR(30),		--项目立项文号
f21nrgm	VARCHAR2(60),		--项目内容及规模
f21lxdm	CHAR(2)		NOT NULL  REFERENCES c08xmlx(b08lxdm),	--项目类型代码
f21jjlx	CHAR(1)		REFERENCES c34jjlx(b34dm), 	--基建类型代码
f21xmjb	CHAR(1)		NOT NULL  REFERENCES c35xmjb(b35dm),  --项目级别代码
f21sjkg	DATE,		--开工日期
f21sjjg	DATE,		--竣工日期
f21lxr	VARCHAR2(10),		--联系人
f21lxdh	VARCHAR2(20),		--联系电话
f21jgbm	CHAR(9)		NOT NULL  REFERENCES c23bjjg(b23jgbm), 	--机构编码
f21lxpz	NUMBER(16,2)	NOT NULL  default 0		--项目立项批准总投资
);