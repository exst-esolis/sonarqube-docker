FROM sonarqube:6.4

RUN mkdir -p /opt/sonarqube/data/es
RUN chgrp -R 0 /opt/sonarqube
RUN chmod -R g+rw /opt/sonarqube
RUN find /opt/sonarqube -type d -exec chmod -R g+x {} +

CMD ["./bin/run.sh"]
