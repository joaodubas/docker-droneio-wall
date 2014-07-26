# drone-wall
#
# VERSION: see `TAG`
FROM crosbymichael/golang
MAINTAINER Joao Paulo Dubas "joao.dubas@gmail.com"

# install system deps
RUN apt-get -y -qq --force-yes update \
    && apt-get -y -qq --force-yes install build-essential

# install drone-wall
RUN go get github.com/drone/drone-wall \
    && go build github.com/drone/drone-wall

# configure container
EXPOSE 8080
ENTRYPOINT [ \
    "drone-wall", \
    "--datasource", \
    "/var/lib/drone/drone.sqlite", \
    "--port", \
    ":8080" \
]
