FROM golang:1.12.0-alpine3.9
LABEL maintainer="Chinmayi C. R."\
    version="1.0"
RUN apt update -y \
    && apt upgrade -y
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]