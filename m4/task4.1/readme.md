# Task 4.1



## Part 1.



### Installing MySQL.

```
sudo apt install mysql-server -y
```


### Configure MySQL

```
sudo mysql_secure_installation
```



### Configuring acces to  MySQL

```
sudo mysql

SELECT user,authentication_string,plugin,host FROM mysql.user;

ALTER USER 'root'@'%' IDENTIFIED WITH caching_sha2_password BY '111';

FLUSH PRIVILEGES;

SELECT user,authentication_string,plugin,host FROM mysql.user;

CREATE USER 'kiykomi'@'%' IDENTIFIED BY '123456Ss!';

GRANT ALL PRIVILEGES ON *.* TO 'kiykomi'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

exit;
```


###  Creating new database


```
mysql -u root -p

show databases;

create database kiyko;

use kiyko;

```

### Create and filling the tabels

```
create table doctors  (id integer auto_increment Primary Key, LastName varchar(50), FirstName varchar(50));

create table patients (id integer auto_increment Primary Key, LastName varchar(50), FirstName varchar(50));

create table professions (id integer auto_increment Primary Key, Speciality varchar(50), Cabinet INT);

insert into doctors (lastname, firstname) values ('Chapayev', 'Vasiliy'), ('Zhivago', 'Doctor'), ('Avicenna', 'Doctor');

insert into patients (lastname, firstname) values ('Ivanov', 'Ivan'), ('Petrov', 'Petr'), ('Sidorov', 'Sidor'), ('Saveliev', 'Saveliy'), ('Mikhailov', 'Mikhail');

insert into professions (speciality, cabinet) values ('Ginekology', '101'), ('Pediatria', '102'), ('Otorinolaringology', '103'), ('Dermatology', '103'), ('surgery', '104');
```



### Let's look how operate with data in tables (listing data, order, group and other)


```
select * from doctors;

select * from patients;

select * from professions;

select *  from professions where speciality='ginekology';

select *  from professions where id=3;

select *  from professions where id > 2;

select *  from doctors order by firstname;

select *  from doctors where firstname like 'doctor' and id < 3;

select *  from doctors group by id;

select *  from doctors group by LastName, id;

```












