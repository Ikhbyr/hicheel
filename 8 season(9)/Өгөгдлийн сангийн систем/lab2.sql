/*Хэрэглэгч үүсгэх*/
CREATE USER 'user_a'@'localhost' IDENTIFIED BY 'user_a';
CREATE USER 'user_b'@'localhost' IDENTIFIED BY 'user_b';
/*user_a эрх өгөх*/
GRANT ALL PRIVILEGES ON northwind.* TO 'user_a'@'localhost';

GRANT ALL PRIVILEGES ON northwind.Customers TO 'user_b'@'localhost';
GRANT ALL PRIVILEGES ON northwind.Employees TO 'user_b'@'localhost';
GRANT ALL PRIVILEGES ON northwind.orders TO 'user_b'@'localhost';

use northwind;
select * from employees;
commit;