FROM golang:1.18-bullseye AS build
WORKDIR /build

COPY . .
ARG ARTIFACTORY_PRO_USER
ARG ARTIFACTORY_PRO_PASS
ARG GITHUB_USER
ARG GITHUB_PASS

ARG GIT_BRANCH
ARG GIT_TAG

# Run the tests
RUN make test

# We aren't publishing anything
FROM scratch
