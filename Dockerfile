FROM adoptopenjdk/openjdk11:x86_64-alpine-jre-11.0.7_10

ENV FLUIG_HOME "/opt/fluig/"

WORKDIR ${FLUIG_HOME}

RUN addgroup -S fluig && adduser -S fluig -G fluig && \
   mkdir -p "${FLUIG_HOME}" && chown -R fluig:fluig "${FLUIG_HOME}"

USER fluig

ADD --chown=fluig:fluig target/image-demo.jar "${FLUIG_HOME}"

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar image-demo.jar" ]
