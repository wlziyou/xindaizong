CREATE TABLE d51ht(    --主合同共同信息表
f51htbh CHAR(20) PRIMARY KEY NOT NULL,  --合同系统编号
f51khbh CHAR(16) NOT NULL REFERENCES d00kh(f00khbh),  --信贷客户编号
f51xmbh CHAR(16) REFERENCES d21xm(f21xmbh),  --项目编号		
f51sgbh CHAR(25),  --合同手工编号（借款合同编号）
f51jgbm CHAR(9) NOT NULL REFERENCES c23bjjg(b23jgbm),  --机构编码
f51yt   VARCHAR2(20),  --借款用途
f51bzdm INTEGER NOT NULL REFERENCES c13bz(b13bzdm)， --币种代码
f51je   NUMBER(16,2) NOT NULL default 0,  --借款金额
f51ksr  DATE,  --借款开始日期	
f51zzr  DATE,  --借款终止日期
f51dkfs VARCHAR2(5) NOT NULL,  --贷款方式
f51dkqx INTEGER NOT NULL,  --贷款期限
f51jkll NUMBER(8,6) NOT NULL default 0,  --借款利率
f51nyll NUMBER(8,6) NOT NULL default 0,  --挪用利率
f51yqll NUMBER(8,6) NOT NULL default 0,  --逾期利率
f51eyyq NUMBER(8,6) NOT NULL default 0,  --恶意逾期利率
f51wyzr VARCHAR2(60) , --违约责任
f51bxqk VARCHAR2(1) NOT NULL default '0',  --保险情况 0-未保险 1-保险
f51qdr  DATE,  --签订日期
f51bzed NUMBER(16,2) NOT NULL, --交存保证金额度
f51ztdm VARCHAR2(2) NOT NULL REFERENCES c10htzt(b10ztdm),  --合同状态代码
f51xcjc DATE,  --下次检查日期
f51bz   VARCHAR2(40),  --备注
f51bzbs CHAR(1) NOT NULL REFERENCES c37bzbs(b37dm),  --并帐标识代码
f51zqbz CHAR(1) NOT NULL,  --是否展期  0-否 1-是
f51hkbz CHAR(1), --还款计划类型标志
f51jsrq DATE, --合同结束日期
f51bzq CHAR(1) NOT NULL;  --被展期标志 0-未被展期 1-被部分展期 2-被全额展期
f51bzqrq DATE,  --被展期日期
f51blbz CHAR(1) NOT NULL  --剥离标志 0-正常合同 1-剥离合同 2-委托合同
    		
);

CREATE SEQUENCE TRAccID_seq;


SELECT * FROM d51ht;

DELETE FROM spd01jkht;
