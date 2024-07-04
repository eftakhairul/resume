#!/bin/sh
#
# Usage example:
#
#   dockerlatex.sh pdflatex foo.tex
#

docker_image="mingc/latex:latest"
# Checking docker installation
if (!command -v docker &> /dev/null); then
    echo "Docker installation not found. Please install docker."
    exit 1
fi

docker image inspect ${docker_image} > /dev/null || docker  pull ${docker_image}


docker run --rm -i --user="$(id -u):$(id -g)" -v `pwd`:/data mingc/latex $@