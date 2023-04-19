-- create database bt2SS3;
-- use bt2SS3

-- create table customer(
-- cid int primary key auto_increment,
-- cname varchar(255) not null,
-- cage int not null
-- );

-- create table product(
-- pid int primary key auto_increment,
-- pname varchar(255) not null,
-- pPrice float not null
-- );

-- create table `order`(
-- oid int primary key auto_increment,
-- odate date not null,
-- ototalprice float not null,
-- cid int,
-- foreign key(cid) references customer(cid)
-- );

-- create table orderdetail(
-- odi int,
-- foreign key(odi) references `order`(oid),
-- pid int,
-- foreign key(pid) references product(pid)
-- );



-- insert into customer(cname, cage ) values
-- ("Minh Quan", 10),
-- ("Ngoc Oanh", 20),
-- ("Hong Ha", 50);

-- insert into product(pname, pPrice) values
-- ("May giat", 3),
-- ("Tu lạnh", 5),
-- ("Dieu hoa", 7),
-- ("Quat", 1),
-- ("Bep dien", 2);

-- insert into `order`(cID,oDate,oTotalPrice) values
-- (1,"2006-3-21",0),
-- (2,"2006-3-23",0),
-- (1,"2006-3-16",0);

-- alter table orderdetail
-- add column odQTY int not null;

-- insert into orderdetail(odi, pid, odQTY) values
-- (1,1,3),
-- (1,3,7),
-- (1,4,2),
-- (2,1,1),
-- (3,1,8),
-- (2,5,4),
-- (2,3,3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
-- select oID, oDate, ototalprice from `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
-- select c.cname , p.pname from ((customer c join `order` o on c.cid = o.cid) join orderdetail od on o.oid = od.odi)join product p on od.pid = p.pid

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
-- select * from customer where cname not in (select c.cname from ((customer c join `order` o on c.cid = o.cid) join orderdetail od on o.oid = od.odi)join product p on od.pid = p.pid)

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
-- Giá bán của từng loại được tính = odQTY*pPrice)
-- select o.cid, o.odate,  p.pPrice, od.odQTY, p.pPrice*od.odQTY as `tổng tiền`  from (`order` o join orderdetail od on o.oid = od.odi) join product p on od.pid = p.pid
