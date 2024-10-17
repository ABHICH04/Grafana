FROM bitnami/grafana:8.3.4-debian-10-r1
USER root
RUN rm -rf /opt/bitnami/grafana/conf/grafana.ini
COPY grafana.ini /opt/bitnami/grafana/conf/grafana.ini
#RUN ls /opt/bitnami/grafana/conf/
RUN cat /opt/bitnami/grafana/conf/grafana.ini | grep monitor-
#RUN stat /usr/share/grafana/conf/defaults.ini
#RUN rm -rf /usr/share/grafana/conf/defaults.ini
#COPY defaults.ini /usr/share/grafana/conf/defaults.ini
#CMD ["/bin/bash"]
