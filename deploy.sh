#!/bin/bash

git pull origin master

mvn clean package

/Users/JoJo/Downloads/NHNNEXT/2015_01/hudi/hudi-workspace/apache-tomcat-8.0.20/bin/shutdown.sh

rsync -avr --delete /Users/JoJo/Downloads/NHNNEXT/2015_01/hudi/hudi-workspace/myproject/target/myproject /Users/JoJo/Downloads/NHNNEXT/2015_01/hudi/hudi-workspace/apache-tomcat-8.0.20/webapps

/Users/JoJo/Downloads/NHNNEXT/2015_01/hudi/hudi-workspace/apache-tomcat-8.0.20/bin/startup.sh
