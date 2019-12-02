
FROM ubuntu:18.04

RUN apt update && apt install -y libxi-dev x11proto-core-dev x11proto-input-dev x11proto-kb-dev x11proto-render-dev x11proto-xext-dev libice-dev libxrender-dev libxrandr-dev libsm-dev libxt-dev libx11-dev libxtst-dev libxext-dev gcc automake autoconf file make zip unzip wget libfreetype6-dev build-essential libcups2-dev libfontconfig1-dev libasound2-dev

RUN wget https://github.com/AdoptOpenJDK/openjdk13-binaries/releases/download/jdk-13.0.1%2B9/OpenJDK13U-jdk_x64_linux_hotspot_13.0.1_9.tar.gz && tar xf OpenJDK13U-jdk_x64_linux_hotspot_13.0.1_9.tar.gz -C /opt/ && ln -s /opt/jdk-13.0.1+9 /opt/jdk13 && rm -rf OpenJDK*.tar.gz && export PATH=/opt/jdk13/bin:${PATH}
