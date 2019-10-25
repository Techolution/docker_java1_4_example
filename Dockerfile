FROM centos:7
RUN yum -y install ld-linux.so.2
ADD ./j2sdk-1_4_2_19-linux-i586-rpm.bin /
RUN chmod -R 777 /j2sdk-1_4_2_19-linux-i586-rpm.bin
RUN (echo yes) | sh /j2sdk-1_4_2_19-linux-i586-rpm.bin
RUN rpm -Uvh /j2sdk-1_4_2_19-linux-i586.rpm

ENV JAVA_HOME /usr/java/j2sdk1.4.2_19
ENV PATH $PATH:$JAVA_HOME/bin
ADD ./java_1_4_sample /java_1_4_sample
RUN chmod -R 777 /java_1_4_sample/
RUN javac java_1_4_sample/src/com/company/Main.java
CMD  java -cp java_1_4_sample/src/ com.company.Main 180000

