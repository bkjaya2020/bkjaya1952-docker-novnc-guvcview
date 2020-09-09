# guvcview linux  from http://guvcview.sourceforge.net/
# Docker guvcview
FROM  bkjaya1952/q4wine-x11vnc-novnc-docker 
MAINTAINER B.K.Jayasundera
ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt -y install vim guvcview  \
   && apt -y autoremove
COPY bash.bashrc /etc/bash.bashrc
COPY guvcview.sh /usr/bin/guvcview.sh
RUN chmod 777 /usr/bin/guvcview.sh
EXPOSE 8080
CMD ["/usr/bin/supervisord"]
