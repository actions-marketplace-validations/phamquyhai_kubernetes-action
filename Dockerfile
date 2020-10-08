FROM alpine:3.11

ARG KUBECTL_VERSION="1.17.9"

RUN apk add py-pip curl
RUN pip install awscli
RUN curl -L -o /usr/bin/kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.9/2020-08-04/bin/darwin/amd64/kubectl
RUN chmod +x /usr/bin/kubectl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
