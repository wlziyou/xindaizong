CREATE TABLE c04xdpz(  --信贷品种
b04pzdm  INTEGER PRIMARY KEY, --品种代码
b04pzmc  VARCHAR2(30) ,  --品种名称
b04dzdm  INTEGER REFERENCES c05dzfl(b05dzdm) NOT NULL, --贷种代码
b04sqtbk VARCHAR2(30) ,  --申请表单
b04httbk VARCHAR2(10) ,  --合同表单
b04cxbd  VARCHAR2(10) ,  --查询表单
b04spsbb VARCHAR2(20) ,  --审批申报表
b04qflb  VARCHAR2(1) ,  --清分类别
b04xybz  VARCHAR2(1) default '0'  --信用标志
);


INSERT INTO c04xdpz VALUES(1, '建行基建贷款', 101, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(2, '技术改造贷款', 102, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(3, '非安居工程房地产开发贷款', 103, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(4, '安居工程贷款', 103, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(5, '清理拖欠设备贷款', 104, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(6, '国家投资债券贷款', 105, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(11, '建安企业流动资金贷款', 201, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(12, '房地产开发企业流动资金贷款', 202, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(13, '基建物资供销企业流动资金贷款', 203, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(14, '其他企业流动资金贷款', 204, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(15, '地方基建设备储备贷款', 205, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(16, '工业企业流动资金贷款', 206, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(17, '建贷项目储备贷款', 207, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(18, '商业企业流动资金贷款', 208, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(19, '地质勘探流动资金贷款', 209, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(20, '特种贷款', 210, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(21, '对外承包工程企业贷款', 211, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(22, '建材建筑工业生产企业贷款', 212, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(23, '专项贷款', 213, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(24, '其它流动资金贷款', 214, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(31, '个人住房贷款', 301, 'A.自然人消费贷款申请填报卡', 'd.jkht', 'sq3', '2;7;9', '3', '0');
INSERT INTO c04xdpz VALUES(32, '汽车贷款', 302, 'A.自然人消费贷款申请填报卡', 'd.jkht', 'sq3', '7;9', '3', '0');
INSERT INTO c04xdpz VALUES(33, '其他消费贷款', 303, 'A.自然人消费贷款申请填报卡', 'd.jkht', 'sq3', '7;9', '3', '0');
INSERT INTO c04xdpz VALUES(34, '小额储蓄抵押贷款', 304, 'A.小额抵押贷款申请填报卡', 'd.jkht', 'sq10', '8;9', '3', '0');
INSERT INTO c04xdpz VALUES(41, '预收款退款担保', 401, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(42, '分期付款担保', 401, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(43, '引进国外设备信用证担保', 401, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(44, '工程招标投标担保', 402, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(45, '工程承包担保', 402, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(46, '工程维修担保', 402, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(47, '借款担保', 403, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(48, '租赁担保', 403, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(49, '履约保证', 404, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(50, '质量保证', 404, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(51, '来料加工保证及来件装配保证', 404, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(52, '关税保付保证', 404, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(53, '保释金保证', 404, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(54, '付款保证', 404, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(55, '延期付款保证', 404, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(56, '补偿贸易保证', 404, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(57, '留滞金保证', 404, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(58, '帐户透支保证', 404, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(59, '经总行同意的其他类保证', 404, 'A.出具保函申请填报卡', 'd.dbxy', 'sq4', '0;5;6;9;12', '1', '1');
INSERT INTO c04xdpz VALUES(61, '承兑汇票业务', 501, 'A.承兑申请填报卡', 'd.cdxy', 'sq5', '0;5;6;9;13', '1', '1');
INSERT INTO c04xdpz VALUES(66, '银行承兑汇票贴现', 601, 'A.贴现申请填报卡', 'd.txht', 'sq6', '0;5;6;9;10', '2', '0');
INSERT INTO c04xdpz VALUES(67, '商业承兑汇票贴现', 602, 'A.贴现申请填报卡', 'd.txht', 'sq6', '0;5;6;9;10', '2', '0');
INSERT INTO c04xdpz VALUES(71, '境外商业借款转贷款', 701, 'A.贷款申请填报卡', 'd.txht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(72, '买方信贷转贷款', 702, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(73, '外国政府借款转贷款', 703, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(74, '国际金融组织转贷款', 704, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(75, '外汇债券转贷款', 705, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(76, '短期外汇贷款', 706, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(77, '中长期外汇贷款', 707, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(81, '进口开证', 801, 'A.贸易融资申请填报卡', 'd.xyzxx', 'sq7', '0;5;6;9;11', '1', '1');
INSERT INTO c04xdpz VALUES(82, '进口托收押汇', 802, 'A.贸易融资申请填报卡', 'd.jkht', 'sq7', '0;5;6;9;11', '1', '0');
INSERT INTO c04xdpz VALUES(83, '出口押汇', 803, 'A.贸易融资申请填报卡', 'd.jkht', 'sq7', '0;5;6;9;11', '1', '0');
INSERT INTO c04xdpz VALUES(84, '出口托收押汇', 804, 'A.贸易融资申请填报卡', 'd.jkht', 'sq7', '0;5;6;9;11', '1', '0');
INSERT INTO c04xdpz VALUES(85, '打包放款', 805, 'A.贸易融资申请填报卡', 'd.jkht', 'sq7', '0;5;6;9;11', '1', '0');
INSERT INTO c04xdpz VALUES(86, '出口押汇', 806, 'A.贸易融资申请填报卡', 'd.jkht', 'sq7', '0;5;6;9;11', '1', '0');
INSERT INTO c04xdpz VALUES(91, '国务院特定贷款', 901, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
INSERT INTO c04xdpz VALUES(92, '其它特定贷款', 902, 'A.贷款申请填报卡', 'd.jkht', 'sq1', '0;5;6;9', '1', '0');
