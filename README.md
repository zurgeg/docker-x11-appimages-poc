# docker-x11-appimages-poc
An idea I made for running docker+x11+appimages which means portable and self-contained applications.

Run with `docker build . -t docker-mx && docker run docker-mx --net=host`

## Advantages of using Docker

- Self-contained: If you delete the container, **everything related to the app is deleted**
- Simple: No more "how the heck do I run this?"
- Customizable: Play around with various settings without breaking things
