--Requirements for application that will use this MySQL server
--Credentials get changed post installation of the application so these are just temp.

UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE (Host = 'localhost') and (User = 'root');

UPDATE mysql.user SET authentication_string = 'removedTempValues' WHERE user='root';

DELETE FROM mysql.user WHERE User = 'root' AND Host NOT LIKE 'localhost';


CREATE USER 'myuser'@'%' IDENTIFIED WITH mysql_native_password BY 'removedTempValues';
GRANT ALL ON *.* TO 'myuser'@'%' WITH GRANT OPTION;


FLUSH PRIVILEGES;