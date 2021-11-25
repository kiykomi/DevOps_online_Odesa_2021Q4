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



### Let's configure firewall to allow work with port 3306 (MySQL port)

```
sudo ufw allow from remote_IP_address to any port 3306
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

![1](screen/Screenshot.png)


### Let's create users with names Sammy, Tommy, Sally, Johny



```
CREATE USER 'sammy'@'%' IDENTIFIED WITH mysql_native_password BY 'Passwd111!';

GRANT CREATE, ALTER on *.* TO 'sammy'@'%' WITH GRANT OPTION;

CREATE USER 'tommy'@'%' IDENTIFIED WITH mysql_native_password BY 'Passwd222!';

GRANT DROP, DELETE, SELECT on *.* TO 'tommy'@'%' WITH GRANT OPTION;

CREATE USER 'sally'@'%' IDENTIFIED WITH mysql_native_password BY 'Passwd333!';

GRANT SELECT on *.* TO 'sally'@'%' WITH GRANT OPTION;

CREATE USER 'johny'@'%' IDENTIFIED WITH mysql_native_password BY 'Passwd444!';

GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'johny'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

quit
```

![2](screen/Screenshot_3.png)



### OK, now  let's check users privilegies on a practic


Sammy have a rights to create tables and modify\add columns.

```
mysql -u sammy -p

use kiyko

select * from doctors;

create table testtable (id int, lastname varchar(50), firstname varchar (50));

quit
```

![3](screen/Screenshot_4.png)


Tommy have rights to Delete some data from tables, delete tables and view info  in tables.


```
mysql -u tommy -p

use kiyko


update testtable set lastname=Romanov, firstname=Nikolay where id=3;

delete from testtable where id=3;


quit
```
![4](screen/Screenshot_5.png)




Sally have only viewing right.

```
mysql -u sally -p

create table1 testtable (id int, lastname varchar(50), firstname varchar (50));

update testtable set lastname=Romanov, firstname=Nikolay where id=3;

delete from testtable where id=3;

quit
```
![5](screen/Screenshot_6.png)




And Johny have all rights for this database/

```
mysql -u johny -p

use kiyko

insert into testtable values ('3', 'Deliev', 'Georgiy');

select * from testtable;


select * from testtable order by id;

drop table testtable;

quit
```
![6](screen/Screenshot_7.png)


## Part 2.

### Let's look to database MySQL

```
use mysql

show tables;

SELECT user,authentication_string,plugin,host FROM mysql.user;

select * from db;

select * from global_grants;
```

![7](screen/Screenshot_9.png)

![8](screen/Screenshot_10.png)

![9](screen/Screenshot_11.png)



## Part 3.


### I have create new DunamoDB at Amazon AWS? enter a data to new base named "kiykomi" and query data ffrom base  with Scan and Query functions.

![10](screen/Screenshot_8.png)

![11](screen/Screenshot_12.png)

![12](screen/Screenshot_13.png)

![13](screen/Screenshot_14.png)

![14](screen/Screenshot_15.png)

```
To create new lines in table I use next construction:
{
  "id": {
    "N": "0"
  },
  "Lastname": {
    "S": "Bonaparte"
  },
  "Firstname": {
    "S": "Napoleon"
  },
  "Year-of-born": {
    "S": "1769"
  }
}

```




# List of used information sources:



https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04-ru - How to install MySQL on Ubuntu.

https://www.digitalocean.com/community/tutorials/how-to-allow-remote-access-to-mysql - How To Allow Remote Access to MySQL.

https://www.geeksforgeeks.org/sql-ddl-dml-tcl-dcl/?ref=lbp - DDL, DML, TCL and DCL commands.

https://coderoad.ru/15872543/%D0%94%D0%BE%D1%81%D1%82%D1%83%D0%BF-%D0%BA-%D1%83%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9-%D0%B1%D0%B0%D0%B7%D0%B5-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85-mysql-%D0%B8%D0%B7-%D0%BA%D0%BE%D0%BC%D0%B0%D0%BD%D0%B4%D0%BD%D0%BE%D0%B9-%D1%81%D1%82%D1%80%D0%BE%D0%BA%D0%B8 - How connect to remote MySQL node with CLI.

https://www.sqlshack.com/how-to-backup-and-restore-mysql-databases-using-the-mysqldump-command/ - How to backup and restore MySQL databases using the mysqldump command.

https://dev.mysql.com/doc/refman/5.7/en/mysqldump-sql-format.html - Dumping Data in SQL Format with mysqldump.

https://metanit.com/sql/mysql/2.6.php - Changing tables and columns.

https://tproger.ru/translations/sql-recap/ - Main command of MySQL, musthave!!!

https://metanit.com/sql/mysql/1.3.php - How to  use MySQL Workbench.

https://metanit.com/sql/mysql/4.9.php - Operator "EXIST".

https://tproger.ru/translations/troubleshoot-common-errors-in-mysql/ - Typical problems With MySQL.

https://andreyex.ru/bazy-dannyx/baza-dannyx-mysql/kak-izmenit-parol-polzovatelya-mysql-mariadb/ - How to change a password for MySQL.


























