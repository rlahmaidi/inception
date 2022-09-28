
echo "start mysql...."
service mysql start;
echo "creating data...."
mysql -u root -e "CREATE DATABASE IF NOT EXISTS wp_db; CREATE USER IF NOT EXISTS 'wp-user'@'%' IDENTIFIED BY 'wp-pass';GRANT ALL PRIVILEGES ON *.* TO 'wp-user'@'%';FLUSH PRIVILEGES;"
echo "creating stop...."
ysql -u root -e "CREATE USER IF NOT EXISTS 'rachida'@'%' IDENTIFIED BY 'rachida'";
mysql -u root wp_db < dbrachid.sql
service mysql stop;
echo "creating start...."
mysqld

