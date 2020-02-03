FROM httpd:2.4.41

RUN cd /usr/local/apache2/conf/ &&\
    touch my.conf &&\
    echo "<VirtualHost *:80>" >> ./my.conf &&\
    echo "     ServerName aaa.test" >> ./my.conf &&\
    echo "     DocumentRoot /sites/aaa" >> ./my.conf &&\
    echo "     <Directory /sites/aaa>" >> ./my.conf &&\
    echo "     	  Require all granted" >> ./my.conf &&\
    echo "     </Directory>" >> ./my.conf &&\
    echo "</VirtualHost>" >> ./my.conf &&\
    echo "<VirtualHost *:80>" >> ./my.conf &&\
    echo "     ServerName bbb.test" >> ./my.conf &&\
    echo "     DocumentRoot /sites/bbb" >> ./my.conf &&\
    echo "     <Directory /sites/bbb>" >> ./my.conf &&\
    echo "     	  Require all granted" >> ./my.conf &&\
    echo "     </Directory>" >> ./my.conf &&\
    echo "</VirtualHost>" >> ./my.conf &&\
    echo "Include conf/my.conf" >> ./httpd.conf

