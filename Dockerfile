FROM amazoncorretto
RUN mkdir /app
WORKDIR /app
COPY shipping.jar .
COPY docker/run.sh .
ENTRYPOINT [ "bash","run.sh" ]