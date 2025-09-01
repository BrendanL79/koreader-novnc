#!/bin/sh

VERSION=$(cat VERSION)

buildah manifest push --all --format v2s2 koreader-novnc "docker://docker.io/brendanl79/koreader-novnc:latest"
buildah manifest push --all --format v2s2 koreader-novnc "docker://docker.io/brendanl79/koreader-novnc:v$VERSION"
