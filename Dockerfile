FROM openjdk
COPY --chown=root:root . /home/app
WORKDIR /home/app
EXPOSE 8080
ENTRYPOINT ["bash", "app/build/distributions/app/bin/app"]
