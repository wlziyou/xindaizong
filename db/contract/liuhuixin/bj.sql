--主合同台帐表
CREATE TABLE d52ztz(                        
       f52htbh VARCHAR2(20) REFERENCES d51ht(f51htbh),  --合同编号
       f52bzdm INTEGER REFERENCES c13bz(b13bzdm),       --币种代码      
       f52khbh VARCHAR2(16) ,--信贷客户编号    
       f52dkye NUMBER(16,2), --贷款余额
       f52ljhd NUMBER(16,2), --累计核定金额
       f52bzje NUMBER(16,2), --交存保证金金额
       f52bjff NUMBER(16,2), --本金累计发放
       f52bjhs NUMBER(16,2), --本金累计回收
       f52bjyq NUMBER(16,2), --本金累计逾期
       f52bjdz1 NUMBER(16,2),--本金累计呆滞
       f52bjdz2 NUMBER(16,2),--本金累计呆账
       f52bjhx NUMBER(16,2), --本金累计核销
       f52bjzq NUMBER(16,2), --本金展期
       f52hxhs NUMBER(16,2), --本金已核销回收
       f52lxye NUMBER(16,2), --利息余额
       f52yslx NUMBER(16,2), --应收利息
       f52sslx NUMBER(16,2),  --实收利息
       f52cslx NUMBER(16,2),  --催收利息
       f52gzlx NUMBER(16,2),  --挂账利息
       f52hxlx NUMBER(16,2), --核销利息    
       f52rq DATE,            --测定日期
       f52fxje NUMBER(16,2),  --风险金额
       f52dkzh VARCHAR2(25),  --贷款账号
       f52qxbz VARCHAR2(3),       --是否欠息贷款
       f52xybz VARCHAR2(3),        --是否信用余额
       f52lxhxhs NUMBER(16,2),  --利息已核销回收
       f52blbj NUMBER(16,2),   --累计剥离本金
       f52bllx NUMBER(16,2)  --累计剥离利息
       PRIMARY KEY(f52htbh)
);
select * from d52ztz
drop table d52ztz

--本金台帐表
CREATE TABLE d85bj(                    
       f85htbh VARCHAR2(20) REFERENCES d51ht(f51htbh), --合同编号
       f85zyxh INTEGER REFERENCES c11bjzy(b11xh),     --本金摘要序号 
       f85rq DATE ,          --日期(日-月-年) DD-MM-YY(HH-MI-SS)    
       f85sxh INTEGER,       --顺序号 
       f85zydm VARCHAR2(3),  --摘要代码
       f85fse NUMBER(16,2),  --发生额
       f85ye NUMBER(16,2),   --余额（合同）
       f85xybz VARCHAR2(3),      --信用标志
       f85czbz VARCHAR(3),      --冲正标志 
       PRIMARY KEY (f85htbh,f85rq,f85sxh,f85zyxh) --主码
)
select * from d85bj
drop table d85bj


--本金剥离台帐表
CREATE TABLE d87blbj(   
       f87htbh VARCHAR2(20) REFERENCES d51ht(f51htbh), --合同编号
       f87blpc VARCHAR2(3) REFERENCES c50blpc(b50pcdm),     --剥离批次
       f87zyxh INTEGER REFERENCES c11bjzy(b11xh),      --本金摘要序号
       f87rq DATE,           --日期(日-月-年) DD-MM-YY(HH-MI-SS)
       f87sxh INTEGER,       --顺序号 
       f87zydm VARCHAR2(3),  --摘要代码
       f87fse NUMBER(16,2),  --发生额
       f87czbz VARCHAR2(3),  --冲正标志
       PRIMARY KEY(f87htbh,f87rq,f87blpc,f87sxh,f87zyxh)  --主码
)
select * from d87blbj
drop table d87blbj

--本金摘要表
CREATE TABLE c11bjzy(                  
       b11xh INTEGER  PRIMARY KEY,     --摘要序号  
       b11zydm VARCHAR2(3),            --摘要代码
       b11zymc VARCHAR2(20)          --摘要名称
)
select * from c11bjzy


--剥离批次表  
CREATE TABLE c50blpc(                  
       b50pcdm VARCHAR2(3) PRIMARY KEY, --批次代码
       b50blrq DATE                  --剥离日期
);
select * from c50blpc




--本金摘要表代码：
insert into c11bjzy values (1,'011','正常发放');
insert into c11bjzy values (2,'022','正常回收');
insert into c11bjzy values (3,'031','垫款');
insert into c11bjzy values (4,'322','逾期回收');
insert into c11bjzy values (5,'422','呆滞回收');
insert into c11bjzy values (6,'522','呆帐回收');
insert into c11bjzy values (7,'462','呆滞核销');
insert into c11bjzy values (8,'562','呆帐核销');
insert into c11bjzy values (9,'072','展期');
insert into c11bjzy values (10,'080','已核销回收');
insert into c11bjzy values (11,'030','正常-->逾期');
insert into c11bjzy values (12,'040','正常-->呆滞');
insert into c11bjzy values (13,'050','正常-->呆帐');
insert into c11bjzy values (14,'340','逾期-->呆滞');
insert into c11bjzy values (15,'350','逾期-->呆帐');
insert into c11bjzy values (16,'450','呆滞-->呆帐');
insert into c11bjzy values (17,'003','转移');
insert into c11bjzy values (18,'004','合并');
insert into c11bjzy values (19,'005','过期失效或信用终止');
insert into c11bjzy values (20,'006','合同终止');
insert into c11bjzy values(21,'002','正常贷款剥离');
insert into c11bjzy values(22,'302','逾期贷款剥离');
insert into c11bjzy values(23,'402','呆滞贷款剥离');
insert into c11bjzy values(24,'502','呆帐贷款剥离');


--剥离批次表代码：
insert into c50blpc values('1','31-12月-1999');
insert into c50blpc values('2','30-6月-2000');


--虚拟表
create table d51ht(
      f51htbh VARCHAR2(20) primary key
)
create table c13bz(
      b13bzdm INTEGER primary key
)


--本金台帐表（text）
CREATE TABLE d85bjtext(                    
 
       f85zyxh INTEGER ,     --本金摘要序号 
       f85fse NUMBER(16,2),  --发生额
       f85rq DATE         --日期(日-月-年) DD-MM-YY(HH-MI-SS)   
    --   PRIMARY KEY (f85zyxh) --主码
)
select * from d85bjtext
drop table d85bjtext
