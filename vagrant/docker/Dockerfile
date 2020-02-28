FROM centos:6

RUN yum -y install httpd && \
    service httpd start && \
    yum -y install mysql-server && \
    service mysqld start && \
    mysqladmin -u root password hoge &&\
    mysql -u root -p hoge

EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND;"]
