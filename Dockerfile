FROM node:5
MAINTAINER Lukas Martinelli <me@lukasmartinelli.ch>

WORKDIR /usr/src/app
RUN npm install -g \
          tl@0.8.x \
          mapnik@3.5.x \
          mbtiles@0.8.x \
          tilelive@5.12.x \
          tilelive-tmsource@0.5.x \
          tilelive-vector@3.9.x \
          tilelive-bridge@2.3.x \
          tilelive-mapnik@0.6.x

VOLUME /tm2source /export
ENV SOURCE_PROJECT_DIR=/tm2source EXPORT_DIR=/export TILELIVE_BIN=tl

COPY . /usr/src/app/
CMD ["/usr/src/app/export-local.sh"]