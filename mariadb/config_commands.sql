/*not used anywhere atm*/
UPDATE mysql.user SET Password=PASSWORD('admin') WHERE User='root';
DELETE FROM mysql.user WHERE User='';
DROP DATABASE test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%';
FLUSH PRIVILEGES;
