FROM java:8-jre
MAINTAINER antono@clemble.com

EXPOSE 10002

ADD ./buildoutput/alert-notification.jar /data/alert-notification.jar

CMD java -jar -Dspring.profiles.active=cloud -Dlogging.config=classpath:logback.cloud.xml -Dserver.port=10002 /data/alert-notification.jar
