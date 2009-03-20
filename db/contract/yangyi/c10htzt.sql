CREATE TABLE c10htzt (  --合同状态
   b10ztdm   char(2) PRIMARY KEY NOT NULL,  --状态代码
   b10ztmc   char(20)  --状态名称
);


insert into c10htzt values ('11','录入');
insert into c10htzt values ('12','合法性检查合格');
insert into c10htzt values ('13','已签订');
insert into c10htzt values ('21','正常执行');
insert into c10htzt values ('22','逾期');
insert into c10htzt values ('23','呆滞');
insert into c10htzt values ('24','呆帐');
insert into c10htzt values ('31','正常执行完毕');
insert into c10htzt values ('32','全部展期');
insert into c10htzt values ('33','全部核销');
insert into c10htzt values ('34','已合并');
insert into c10htzt values ('35','已转移');
