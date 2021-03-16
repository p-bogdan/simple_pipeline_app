FROM openjdk
COPY --chown=root:root . /home/app
WORKDIR /home/app


#RUN "while true; do sh /home/app/build/distributions/app/bin/app; sleep 1; done &"
EXPOSE 80
#CMD "sh /home/app/app/build/distributions/app/bin/app"
#CMD "ls -la /"
