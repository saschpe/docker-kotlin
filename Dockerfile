FROM openjdk:8-alpine
LABEL maintainer="Sascha Peilicke <sascha@peilicke.de"

ARG kotlin_version=1.3.20

LABEL description="Kotlin ${kotlin_version}"

ENV KOTLIN_ROOT /opt/kotlinc
ENV KOTLIN_VERSION ${kotlin_version}
ENV PATH $PATH:$KOTLIN_ROOT/bin

RUN apk add --no-cache --virtual=.build-dependencies bash wget unzip \
	&& wget https://github.com/JetBrains/kotlin/releases/download/v${KOTLIN_VERSION}/kotlin-compiler-${KOTLIN_VERSION}.zip -O /tmp/kotlin.zip \
	&& mkdir -p /opt \
    && unzip /tmp/kotlin.zip -d /opt \
    && rm -v /tmp/kotlin.zip \
    && java -version \
    && kotlin -version

ENTRYPOINT ["kotlin"] 
