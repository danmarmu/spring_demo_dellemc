DROP DATABASE glic_cio_demo;

CREATE DATABASE glic_cio_demo;

DROP USER 'glic_cio_demo'@'%';

FLUSH PRIVILEGES;

CREATE USER 'glic_cio_demo'@'%' IDENTIFIED BY 'glic_cio_demo';

GRANT ALL PRIVILEGES ON glic_cio_demo.* TO 'glic_cio_demo'@'%';

use glic_cio_demo;

create table glic_cio_demo.product(id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
description varchar(255),
image_url varchar(255),
price decimal(19,2),
product_id varchar(255),
version int(11)
);

use glic_cio_demo;

insert into product(id,description,image_url,price,product_id,version) values (NULL,"Guardian Life Insurance","https://www.guardianlife.com/sites/default/files/i_myretirement.jpg",29.95,"100",0);

insert into product(id,description,image_url,price,product_id,version) values (NULL,"Guardian Disability Insurance","https://www.guardianlife.com/sites/default/files/i_myfinances.jpg",52.38,"101",0);

