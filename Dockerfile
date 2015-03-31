FROM java:8-jre
MAINTAINER antono@clemble.com

EXPOSE 8080

ADD target/alert-notification-0.17.0-SNAPSHOT.jar /data/alert-notification.jar

CMD java -jar -Dspring.profiles.active=cloud /data/alert-notification.jar
