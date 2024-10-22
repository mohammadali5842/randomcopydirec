FROM ubuntu:23.04
RUN apt update -y
RUN apt install -y openjdk-11-jdk
RUN mkdir -p /u01/apps/
COPY target/randomcopydirec-1.0.0.jar /u01/apps/
ENV CLASSPATH=/u01/apps/randomcopydirec-1.0.0.jar
CMD ["java", "com.randomcopydirec.main.App"]