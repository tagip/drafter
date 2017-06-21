FROM python:2.7-alpine

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
