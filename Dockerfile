# base image
FROM pelias/baseimage

# downloader apt dependencies
# note: this is done in one command in order to keep down the size of intermediate containers
RUN apt-get update && apt-get install -y osmctools && rm -rf /var/lib/apt/lists/*

# change working dir
ENV WORKDIR /code/pelias/osm-planet-update
WORKDIR ${WORKDIR}

# add local code
ADD . ${WORKDIR}

CMD [ "/bin/bash", "update.sh" ]
