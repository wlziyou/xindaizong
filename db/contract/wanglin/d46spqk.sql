CREATE TABLE d46spqk(
f46htbh VARCHAR2(20) REFERENCES d51ht(f51htbh) NOT NULL,--合同编号
f46jgjb VARCHAR2(1) NOT NULL,--机构级别 0-经办行 123-上级行
f46jgmc VARCHAR2(20),--机构名称
f46jbr VARCHAR2(10),--经办人
f46ckfz VARCHAR2(10),--财会部门负责人
f46xdfz VARCHAR2(10),--信贷部门负责人
f46jhfz VARCHAR2(10),--计划部门负责人
f46gjfz VARCHAR2(10),--国际业务部门负责人
f46jgfz VARCHAR2(10),--机构负责人
f46xjbr VARCHAR2(10),--现经办人
PRIMARY KEY(f46htbh,f46jgjb)
);


CREATE SEQUENCE f46htbh_seq;