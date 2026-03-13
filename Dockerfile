FROM alpine:3.23.3

RUN apk add helm curl jq yq git
RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin
RUN curl -sSL https://github.com/norwoodj/helm-docs/releases/download/v1.14.2/helm-docs_1.14.2_Linux_x86_64.tar.gz | tar -xz -C /usr/local/bin
