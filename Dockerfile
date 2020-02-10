
FROM ubuntu:18.04

RUN apt update && apt install -y libxi-dev x11proto-core-dev x11proto-input-dev x11proto-kb-dev x11proto-render-dev x11proto-xext-dev libice-dev libxrender-dev libxrandr-dev libsm-dev libxt-dev libx11-dev libxtst-dev libxext-dev gcc automake autoconf file make zip unzip wget libfreetype6-dev build-essential libcups2-dev libfontconfig1-dev libasound2-dev

RUN wget https://github.com/alibaba/dragonwell8/releases/download/v8.2.2-GA/Alibaba_Dragonwell_8.2.2-GA_Linux_x64.tar.gz && tar xf Alibaba_Dragonwell_8.2.2-GA_Linux_x64.tar.gz -C /opt/ && rm -rf Alibaba_Dragonwell*.tar.gz && cd /opt/ && mv j2sdk-image dragonwell_8.2.2

ENV JAVA_HOME=/opt/dragonwell_8.2.2
ENV PATH=${JAVA_HOME}/bin:${PATH}
