CREATE TABLE d51ht(    --����ͬ��ͬ��Ϣ��
f51htbh CHAR(20) PRIMARY KEY NOT NULL,  --��ͬϵͳ���
f51khbh CHAR(16) NOT NULL REFERENCES d00kh(f00khbh),  --�Ŵ��ͻ����
f51xmbh CHAR(16) REFERENCES d21xm(f21xmbh),  --��Ŀ���		
f51sgbh CHAR(25),  --��ͬ�ֹ���ţ�����ͬ��ţ�
f51jgbm CHAR(9) NOT NULL REFERENCES c23bjjg(b23jgbm),  --��������
f51yt   VARCHAR2(20),  --�����;
f51bzdm INTEGER NOT NULL REFERENCES c13bz(b13bzdm)�� --���ִ���
f51je   NUMBER(16,2) NOT NULL default 0,  --�����
f51ksr  DATE,  --��ʼ����	
f51zzr  DATE,  --�����ֹ����
f51dkfs VARCHAR2(5) NOT NULL,  --���ʽ
f51dkqx INTEGER NOT NULL,  --��������
f51jkll NUMBER(8,6) NOT NULL default 0,  --�������
f51nyll NUMBER(8,6) NOT NULL default 0,  --Ų������
f51yqll NUMBER(8,6) NOT NULL default 0,  --��������
f51eyyq NUMBER(8,6) NOT NULL default 0,  --������������
f51wyzr VARCHAR2(60) , --ΥԼ����
f51bxqk VARCHAR2(1) NOT NULL default '0',  --������� 0-δ���� 1-����
f51qdr  DATE,  --ǩ������
f51bzed NUMBER(16,2) NOT NULL, --���汣֤����
f51ztdm VARCHAR2(2) NOT NULL REFERENCES c10htzt(b10ztdm),  --��ͬ״̬����
f51xcjc DATE,  --�´μ������
f51bz   VARCHAR2(40),  --��ע
f51bzbs CHAR(1) NOT NULL REFERENCES c37bzbs(b37dm),  --���ʱ�ʶ����
f51zqbz CHAR(1) NOT NULL,  --�Ƿ�չ��  0-�� 1-��
f51hkbz CHAR(1), --����ƻ����ͱ�־
f51jsrq DATE, --��ͬ��������
f51bzq CHAR(1) NOT NULL;  --��չ�ڱ�־ 0-δ��չ�� 1-������չ�� 2-��ȫ��չ��
f51bzqrq DATE,  --��չ������
f51blbz CHAR(1) NOT NULL  --�����־ 0-������ͬ 1-�����ͬ 2-ί�к�ͬ
    		
);

CREATE SEQUENCE TRAccID_seq;


SELECT * FROM d51ht;

DELETE FROM spd01jkht;
