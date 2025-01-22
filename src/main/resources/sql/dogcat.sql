create database dogcat;

use dogcat;

create table tcategory (
	category_id integer not null primary key,
    parent_id integer,
	category_name varchar(200) not null
);

insert into tcategory values 
	(1000, null, "강아지 사료"),
    (1010, 1000, "분유/이유식"),
    (1020, 1000, "동결건조사료"),
    (1030, 1000, "습식/건식"),
    
    (2000, null, "영양 간식"),
    (2010, 2000, "수제간식"),
    (2020, 2000, "육포/사시미/져키"),
    (2030, 2000, "껌"),
    
    (3000, null, "위생/배변"),
    
    (4000, null, "샴푸/린스/컨디셔너"),
    
    (5000, null, "미용/목욕용품"),
    
    (6000, null, "하우스"),
    (6010, 6000, "공/고무"),
    (6020, 6000, "천 인형"),
    
    (7000, null, "장난감")
    
    ;