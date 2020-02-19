
FROM dragonwelljdk/build_jdk:base

RUN wget https://github.com/alibaba/dragonwell11/releases/download/dragonwell_11.0.5.1-preview/Alibaba_Dragonwell_11.0.5.1-preview+7_Linux_x64.tar.gz && tar xf Alibaba_Dragonwell_11.0.5.1-preview+7_Linux_x64.tar.gz -C /opt/ && rm -rf Alibaba_Dragonwell*.tar.gz

ENV JAVA_HOME=/opt/dragonwell_11.0.5.1
ENV PATH=${JAVA_HOME}/bin:${PATH}
