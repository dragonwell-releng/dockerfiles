
FROM ubuntu:18.04

RUN apt update && apt install -y libxi-dev x11proto-core-dev x11proto-input-dev x11proto-kb-dev x11proto-render-dev x11proto-xext-dev libice-dev libxrender-dev libxrandr-dev libsm-dev libxt-dev libx11-dev libxtst-dev libxext-dev gcc automake autoconf file make zip unzip wget libfreetype6-dev build-essential libcups2-dev libfontconfig1-dev libasound2-dev

RUN wget https://github.com/alibaba/dragonwell11/releases/download/dragonwell_11.0.5.1-preview/Alibaba_Dragonwell_11.0.5.1-preview+7_Linux_x64.tar.gz && tar xf Alibaba_Dragonwell_11.0.5.1-preview+7_Linux_x64.tar.gz -C /opt/ && rm -rf Alibaba_Dragonwell*.tar.gz

ENV JAVA_HOME=/opt/dragonwell_11.0.5.1
ENV PATH=${JAVA_HOME}/bin:${PATH}
