FROM ubuntu:20.04

ARG TZ=UTC

RUN useradd -ms /bin/bash appimages

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y tzdata 

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget fuse libgtk-3-0 libnotify4 libnss3 libxss1 libxtst6 xdg-utils libatspi2.0-0 libuuid1 libsecret-1-0 libsqlcipher0

USER appimages

WORKDIR /home/appimages

RUN wget https://github.com/srevinsaju/element-appimage/releases/download/stable/Element-v1.9.0.glibc2.31.AppImage -O Element.AppImage

RUN chmod +x /home/appimages/Element.AppImage

RUN mkdir -p /home/appimages/.config/

RUN mkdir /home/appimages/.config/Element

ENTRYPOINT ["/home/appimages/Element.AppImage"]
