use augustdb;

/*create table augustdb_Association_1(
Ord_orderID varchar(20) ,
Del_deliveryReceiptID varchar(20),
orderID varchar(20),
deliveryReceiptID varchar(20)
);
alter table augustdb_Association_1 add constraint FK_Del_deliveryReceiptID foreign key(Del_deliveryReceiptID) references  augustdb_DeliveryReceipt(deliveryReceiptID);
alter table augustdb_Association_1 add constraint FK_Ord_orderID foreign key(Ord_orderID) references  augustdb_Order(orderID);
*/

-- 交货收据
create table augustdb_DeliveryReceipt(
  deliveryReceiptID varchar(20) primary key ,
  startCity varchar(20),
  endCity varchar(20),
  midCity varchar(20),
  makeDtae datetime,
  State varchar(20),
  COMMENT varchar(100)
);


-- 订单
create table augustdb_Order(
  orderID varchar(20) primary key,
  carID varchar(20),
  cuID varchar(20),
  postPName varchar(20),
  postPTel varchar(20),
  postPaddr varchar(50),
  getPName varchar(20),
  getPTel varchar(20),
  getPaddr varchar(50),
  goodsName varchar(100),
  goodsWeight int,
  orderType varchar(20),
  orderState varchar(20),
  transportPrice decimal(20),
  deliveryPrice decimal(20),
  totalPrice varchar(20),
  Comment varchar(100)
);
alter table augustdb_Order add constraint FK_carID foreign key(carID) references  augustdb_Car(carID);
alter table augustdb_Order add constraint FK_cuID foreign key(cuID) references  augustdb_Customer(cuID);
-- 2、订单表数据
insert into augustdb_Order
values (1,
        1,
        "电子商品",
        4,
        "程某",
        "海南海口市某某区某某公司",
        "湖南某某市某某公司",
        0,
        "14487432244",
        "陈先生",
        "15034323422",
        "海口",
        "广州",
        "长沙",
        20,
        20,
        40,
        80,
        "大卡车",
        "这个字段好长写的麻烦啊，有没有写的更快的方法");

-- 顾客
create table augustdb_Customer(
  cuID varchar(20) primary key ,
  customerName varchar(20),
  customerPsd varchar(20),
  customerSex char(10),
  Brithday datetime,
  Tel varchar(20),
  Address varchar(20),
  Comment varchar(100)
);
insert into augustdb_Customer
values ("1","陈先现", 0, '男', 1,now(), "123456", "150457672" , "长沙某某区某偶路24号", "xxx");
-- 车辆
create table augustdb_Car(
  carID varchar(20) primary key,
  routeID varchar(20),
  carType varchar(20),
  carOrign varchar(20),
  carProDate datetime,
  carBuyDate datetime,
  carCapacity int,
  carState bit,
  COMMENT varchar(100)
);
alter table augustdb_Car add constraint FK_routeID foreign key(routeID) references  augustdb_Route(routeID);

-- 路线
create table augustdb_Route(
  routeID varchar(20) primary key ,
  cityID varchar(20),
  provinceID varchar(20),
  routeName varchar(20),
  startProvince varchar(20),
  startCity varchar(20),
  endProvince varchar(20),
  endCity varchar(20),
  midProvince varchar(20),
  midCity varchar(20),
  transportPrice decimal(20),
  Comment varchar(100)
);
alter table augustdb_Route add constraint FK_provincelID foreign key(provinceID) references  augustdb_Privance(provinceID);
alter table augustdb_Route add constraint FK_cityID foreign key(cityID) references  augustdb_City(cityID);

-- 省份
create table augustdb_Privance(
  provinceID varchar(20) primary key,
  provinceName varchar(20)
);
insert into augustdb_Privance
values ("1","广东"),
       ("2","福建"),
       ("3","海南"),
       ("4","湖南"),
       ("5","贵州"),
       ("6","湖北"),
       ("7","江西");

-- 城市
create table augustdb_City(
  cityID varchar(20) primary key ,
  provinceID varchar(20),
  cityName varchar(20),
  provinceName varchar(20)
);
alter table augustdb_City add constraint FK_provinceID foreign key(provinceID) references  augustdb_Privance(provinceID);

insert into augustdb_City
VALUES ("1","1","广州","广东"),
       ("2","2","海口","福建"),
       ("3","3","厦门","海南"),
       ("4","4","长沙","湖南"),
       ("5","5","贵阳","贵州"),
       ("6","6","武汉","湖北"),
       ("7","7","南昌","江西");

-- 城市地区
create table augustdb_CityArea(
  areaID varchar(20) primary key ,
  cityID varchar(20),
  rangeID varchar(20),
  cityName varchar(20)
);
alter table augustdb_CityArea add constraint FK_city_ID foreign key(cityID) references  augustdb_City(cityID);
alter table augustdb_CityArea add constraint FK_rangeID foreign key(rangeID) references  augustdb_DeliveryRange(rangeID);
insert into augustdb_CityArea
VALUES ("1", "1","中通物流","黄埔区"),
       ("2", "1","中通物流","天河区"),
       ("3", "2","中通物流","龙华区"),
       ("4", "2","中通物流","秀英区"),
       ("5", "3","中通物流","思明区"),
       ("6", "4","中通物流","天心区"),
       ("7", "5","中通物流","南明区"),
       ("8", "6","中通物流","武昌区"),
       ("9", "7","中通物流","西湖区");
-- 交货范围
create table augustdb_DeliveryRange(
  rangeID varchar(20) primary key ,
  dePID varchar(20),
  areaID varchar(20),
  rangeName varchar(20),
  deliveryPrice decimal(20),
  COMMENT varchar(100)
);
alter table augustdb_DeliveryRange add constraint FK_dePID foreign key(dePID) references  augustdb_DeliveryPlace(dePID);
alter table augustdb_DeliveryRange add constraint FK_areaID foreign key(areaID) references  augustdb_CityArea(areaID);

insert into august_area
values ("中通物流", 16, 4, 1, "物流好慢");

-- 交货地点
create table augustdb_DeliveryPlace(
  dePID varchar(20) primary key ,
  mgID varchar(20),
  dePName varchar(20),
  provinceName varchar(20),
  cityName varchar(20),
  mgName varchar(20),
  dePTel varchar(20),
  dePaddr varchar(100),
  COMMENT  varchar(100)
);
alter table augustdb_DeliveryPlace add constraint FK_mgID foreign key(mgID) references  augustdb_Manager(mgID);
insert into augustdb_DeliveryPlace
values ("天心区", 4, 4, 1, "15034542342", "某某花园3栋12号", 1, 1, "没有什么好说的，你这个人好烦");

-- 经理
create table augustdb_Manager(
mgID varchar(20) primary key ,
roleID varchar(20),
managerName varchar(20),
managerSex char(10),
Tel varchar(20),
Address varchar(20),
COMMENT varchar(100)
);
alter table augustdb_Manager add constraint FK_roleID foreign key(roleID) references  augustdb_Role(roleID);
-- 6、管理员表数据
insert into augustdb_Manager
values ("陈先生", "0", "1", "0", "长沙", "湖南省长沙市某某区某某路某某公司124号", "123456", "15034321234", "这个人好懒"),
       ("李咏lol", "0", "2", "0", "广州", "广东省广州市某某区某某路145号", "xxxxxx", "1678984545", "这个人都不知道说什么了");

-- 用户组
create table augustdb_Role(
  roleID varchar(20) primary key ,
  roleName varchar(20),
  COMMENT varchar(100)
);

-- 用户组表数据
insert into augustdb_Role
VALUES (1,"陈赫", "买了一台苹果笔记电脑"),
       (2,"张三", "买了一部华为荣耀10手机"),
       (3,"李四", "买了java编程、JavaEE框架");

