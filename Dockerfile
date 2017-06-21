FROM alpine:3.6

RUN apk update && apk upgrade && \
    apk add --no-cache gcc make git openssh g++

RUN git clone --recursive git://github.com/apiaryio/drafter.git && \
  cd drafter && \
  ./configure && \
  make drafter && \
  make install && \
  drafter -v

RUN apk del openssh git

ENTRYPOINT ["drafter"]
