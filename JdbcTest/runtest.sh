#!/bin/bash
javac -cp .:mysql-connector-java-5.1.37.jar JdbcTest.java
java -cp .:mysql-connector-java-5.1.37.jar JdbcTest
