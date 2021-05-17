UPDATE mysql.user SET Password=PASSWORD('admin') WHERE User='root';
DELETE FROM mysql.user WHERE User='';
DROP DATABASE test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%';
FLUSH PRIVILEGES;

CREATE DATABASE traakki;
CREATE USER 'testaaja'@'localhost' IDENTIFIED BY 'maiskis88';
GRANT ALL ON traakki.* TO testaaja@localhost IDENTIFIED BY 'maiskis88';
FLUSH PRIVILEGES;

use traakki;
