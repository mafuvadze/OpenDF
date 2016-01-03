echo "setup in progress!"

mysql -u root -p
CREATE DATABASE IF NOT EXISTS OpenDF;
CREATE USER IF NOT EXISTS 'OpenDFU'@'localhost' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON OpenDF.* TO 'OpenDFU'@'localhost';
SOURCE OpenDF.sql

cd %HOMEPATH%
cd glassfish_server
cd glassfish
cd bin

asadmin start-domain domain1

asadmin deploy \OpenDF\OpenDF-web\target\OpenDF-web-1.0-SNAPSHOT.war