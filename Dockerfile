FROM amazoncorretto
RUN mkdir /app
WORKDIR /app
COPY node_modules/ node_modules/
COPY shipping.jar .
COPY docker/run.sh .
ENTRYPOINT [ "bash","run.sh" ]