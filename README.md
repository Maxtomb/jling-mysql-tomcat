#  BASE aallam/oracle-java
AUTHOR JerryLing(toiklaun@gmail.com)

#TOMCAT_HOME=/opt/tomcat
 ![image](https://github.com/Maxtomb/static-res/raw/master/install.gif)
#  1.sql folder
Place all the sql file in to sql folder. The script will load all sql file automatically. 
#  2.war folder
Place all the war file in to war folder. The script will load all war files into /opt/tomcat/webapps
#  3.JdbcTest folder
This folder is for JDBC Test
runtest.sh script will prove if the mysql works well.
#  4.taa.war file 
This program will perform simple insert behavior into mysql db. Please visit http://localhost:8089/taa/data to do test.

#  Installation
./install.sh   
#  Uninstallation
./uninstall.sh 

#  Tomcat Management
username="tomcat" 
password="s3cret"



