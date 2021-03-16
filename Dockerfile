FROM openjdk
COPY --chown=root:root . /home/app
#COPY cp simple-pipeline-app.service /etc/systemd/system/simple-pipeline-app.service
WORKDIR /home/app
#RUN systemctl start simple-pipeline-app.service 

#RUN "while true; do sh /home/app/build/distributions/app/bin/app; sleep 1; done &"
EXPOSE 80
#CMD "while true; do nohup sh app/build/distributions/app/bin/app; sleep 1; done &"

