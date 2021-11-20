FROM ubuntu:20.04

RUN useradd -ms /bin/bash appimages

RUN wget https://github.com/srevinsaju/element-appimage/releases/download/stable/Element-v1.9.0.glibc2.31.AppImage -O /usr/bin/element

USER appimages

ENV DISPLAY=127.0.0.1:0

ENTRYPOINT ["element"]
