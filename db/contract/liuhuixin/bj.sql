--����̨ͬ�ʱ�
CREATE TABLE d52ztz(                        
       f52htbh VARCHAR2(20) REFERENCES d51ht(f51htbh),  --��ͬ���
       f52bzdm INTEGER REFERENCES c13bz(b13bzdm),       --���ִ���      
       f52khbh VARCHAR2(16) ,--�Ŵ��ͻ����    
       f52dkye NUMBER(16,2), --�������
       f52ljhd NUMBER(16,2), --�ۼƺ˶����
       f52bzje NUMBER(16,2), --���汣֤����
       f52bjff NUMBER(16,2), --�����ۼƷ���
       f52bjhs NUMBER(16,2), --�����ۼƻ���
       f52bjyq NUMBER(16,2), --�����ۼ�����
       f52bjdz1 NUMBER(16,2),--�����ۼƴ���
       f52bjdz2 NUMBER(16,2),--�����ۼƴ���
       f52bjhx NUMBER(16,2), --�����ۼƺ���
       f52bjzq NUMBER(16,2), --����չ��
       f52hxhs NUMBER(16,2), --�����Ѻ�������
       f52lxye NUMBER(16,2), --��Ϣ���
       f52yslx NUMBER(16,2), --Ӧ����Ϣ
       f52sslx NUMBER(16,2),  --ʵ����Ϣ
       f52cslx NUMBER(16,2),  --������Ϣ
       f52gzlx NUMBER(16,2),  --������Ϣ
       f52hxlx NUMBER(16,2), --������Ϣ    
       f52rq DATE,            --�ⶨ����
       f52fxje NUMBER(16,2),  --���ս��
       f52dkzh VARCHAR2(25),  --�����˺�
       f52qxbz VARCHAR2(3),       --�Ƿ�ǷϢ����
       f52xybz VARCHAR2(3),        --�Ƿ��������
       f52lxhxhs NUMBER(16,2),  --��Ϣ�Ѻ�������
       f52blbj NUMBER(16,2),   --�ۼư��뱾��
       f52bllx NUMBER(16,2)  --�ۼư�����Ϣ
       PRIMARY KEY(f52htbh)
);
select * from d52ztz
drop table d52ztz

--����̨�ʱ�
CREATE TABLE d85bj(                    
       f85htbh VARCHAR2(20) REFERENCES d51ht(f51htbh), --��ͬ���
       f85zyxh INTEGER REFERENCES c11bjzy(b11xh),     --����ժҪ��� 
       f85rq DATE ,          --����(��-��-��) DD-MM-YY(HH-MI-SS)    
       f85sxh INTEGER,       --˳��� 
       f85zydm VARCHAR2(3),  --ժҪ����
       f85fse NUMBER(16,2),  --������
       f85ye NUMBER(16,2),   --����ͬ��
       f85xybz VARCHAR2(3),      --���ñ�־
       f85czbz VARCHAR(3),      --������־ 
       PRIMARY KEY (f85htbh,f85rq,f85sxh,f85zyxh) --����
)
select * from d85bj
drop table d85bj


--�������̨�ʱ�
CREATE TABLE d87blbj(   
       f87htbh VARCHAR2(20) REFERENCES d51ht(f51htbh), --��ͬ���
       f87blpc VARCHAR2(3) REFERENCES c50blpc(b50pcdm),     --��������
       f87zyxh INTEGER REFERENCES c11bjzy(b11xh),      --����ժҪ���
       f87rq DATE,           --����(��-��-��) DD-MM-YY(HH-MI-SS)
       f87sxh INTEGER,       --˳��� 
       f87zydm VARCHAR2(3),  --ժҪ����
       f87fse NUMBER(16,2),  --������
       f87czbz VARCHAR2(3),  --������־
       PRIMARY KEY(f87htbh,f87rq,f87blpc,f87sxh,f87zyxh)  --����
)
select * from d87blbj
drop table d87blbj

--����ժҪ��
CREATE TABLE c11bjzy(                  
       b11xh INTEGER  PRIMARY KEY,     --ժҪ���  
       b11zydm VARCHAR2(3),            --ժҪ����
       b11zymc VARCHAR2(20)          --ժҪ����
)
select * from c11bjzy


--�������α�  
CREATE TABLE c50blpc(                  
       b50pcdm VARCHAR2(3) PRIMARY KEY, --���δ���
       b50blrq DATE                  --��������
);
select * from c50blpc




--����ժҪ����룺
insert into c11bjzy values (1,'011','��������');
insert into c11bjzy values (2,'022','��������');
insert into c11bjzy values (3,'031','���');
insert into c11bjzy values (4,'322','���ڻ���');
insert into c11bjzy values (5,'422','���ͻ���');
insert into c11bjzy values (6,'522','���ʻ���');
insert into c11bjzy values (7,'462','���ͺ���');
insert into c11bjzy values (8,'562','���ʺ���');
insert into c11bjzy values (9,'072','չ��');
insert into c11bjzy values (10,'080','�Ѻ�������');
insert into c11bjzy values (11,'030','����-->����');
insert into c11bjzy values (12,'040','����-->����');
insert into c11bjzy values (13,'050','����-->����');
insert into c11bjzy values (14,'340','����-->����');
insert into c11bjzy values (15,'350','����-->����');
insert into c11bjzy values (16,'450','����-->����');
insert into c11bjzy values (17,'003','ת��');
insert into c11bjzy values (18,'004','�ϲ�');
insert into c11bjzy values (19,'005','����ʧЧ��������ֹ');
insert into c11bjzy values (20,'006','��ͬ��ֹ');
insert into c11bjzy values(21,'002','�����������');
insert into c11bjzy values(22,'302','���ڴ������');
insert into c11bjzy values(23,'402','���ʹ������');
insert into c11bjzy values(24,'502','���ʴ������');


--�������α���룺
insert into c50blpc values('1','31-12��-1999');
insert into c50blpc values('2','30-6��-2000');


--�����
create table d51ht(
      f51htbh VARCHAR2(20) primary key
)
create table c13bz(
      b13bzdm INTEGER primary key
)


--����̨�ʱ�text��
CREATE TABLE d85bjtext(                    
 
       f85zyxh INTEGER ,     --����ժҪ��� 
       f85fse NUMBER(16,2),  --������
       f85rq DATE         --����(��-��-��) DD-MM-YY(HH-MI-SS)   
    --   PRIMARY KEY (f85zyxh) --����
)
select * from d85bjtext
drop table d85bjtext
