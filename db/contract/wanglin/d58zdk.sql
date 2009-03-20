CREATE TABLE c38zzxs(  --组织形式
b38dm VARCHAR2(1) PRIMARY KEY NOT NULL, --组织形式代码
b38hy VARCHAR2(20) --组织形式含义
);

INSERT INTO c38zzxs VALUES ('0','双边商业带款');
INSERT INTO c38zzxs VALUES ('1','商业银团贷款');




CREATE TABLE c39xs(  --形式
b39dm VARCHAR2(1) PRIMARY KEY NOT NULL,  --形式代码
b39hy VARCHAR2(30)  --形式含义
);

INSERT INTO c39xs VALUES ('0','总行签约分行执行');
INSERT INTO c39xs VALUES ('1','总行签约转贷分行');
INSERT INTO c39xs VALUES ('2','分行签约分行执行');






CREATE TABLE c40jwjg(	--境外机构
b40dm VARCHAR2(1) PRIMARY KEY NOT NULL,  --境外机构类别代码
b40hy VARCHAR2(20)  --境外机构类别含义
);

INSERT INTO c40jwjg VALUES ('0','商业银行');
INSERT INTO c40jwjg VALUES ('1','政府');
INSERT INTO c40jwjg VALUES ('2','国际金融机构');
INSERT INTO c40jwjg VALUES ('3','证券承销商');







CREATE TABLE d58zdk( --转贷款
f58htbh CHAR(20) PRIMARY KEY  NOT NULL  --REFERENCES d51ht(f51htbh),  --合同编号
f58jwqc VARCHAR2(60) NOT NULL,   --境外机构全称
f58zdbh CHAR(25),  --转贷协议编号
f58zzxs VARCHAR2(1) REFERENCES c38zzxs(b38dm),  --组织形式代码
f58xs VARCHAR2(1) REFERENCES c39xs(b39dm),  --形式代码(转贷形式)
f58jwjg VARCHAR2(1) REFERENCES c40jwjg(b40dm),  --境外机构类别代码
f58kxq INT,  --宽限期
f58sxf NUMBER(16,2) NOT NULL  --手续费(转贷费)
);

CREATE SEQUENCE f58htbh_seq;