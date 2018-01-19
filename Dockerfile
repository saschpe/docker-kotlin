FROM openjdk:8-alpine
LABEL maintainer="Sascha Peilicke <sascha@peilicke.de"

ARG kotlin_version=1.2.20

LABEL description="Kotlin ${kotlin_version}"

ENV KOTLIN_ROOT /opt/kotlinc
ENV PATH $PATH:$KOTLIN_ROOT/bin

RUN apk add --no-cache --virtual=.build-dependencies bash wget unzip \
	&& wget https://github.com/JetBrains/kotlin/releases/download/v${kotlin_version}/kotlin-compiler-${kotlin_version}.zip -O /tmp/kotlin.zip \
	&& mkdir -p $KOTLIN_ROOT \
    && unzip /tmp/kotlin.zip -d /opt \
    && rm -v /tmp/kotlin.zip
RUN java -version \
    && kotlin -version

ENTRYPOINT ["kotlin"] 
