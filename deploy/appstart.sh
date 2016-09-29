sudo ln -s /home/ec2-user/springapp/target/spring-boot-web-0.0.1-SNAPSHOT.jar /etc/init.d/guardian_app

sudo chmod 700 /etc/init.d/guardian_app

sudo service guardian_app restart

sleep 15
