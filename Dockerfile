FROM openjdk:11.0.6-jre-slim

ENV FLUIG_HOME "/opt/fluig/"

WORKDIR ${FLUIG_HOME}

RUN groupadd -r fluig && useradd -r -g fluig fluig && \
   mkdir -p "${FLUIG_HOME}" && chown -R fluig:fluig "${FLUIG_HOME}"

USER fluig

ADD --chown=fluig:fluig target/image-demo.jar "${FLUIG_HOME}"

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar image-demo.jar" ]
