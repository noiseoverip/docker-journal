#!/bin/bash
# Wrapper script for building docker container for journal
# used mostly to pass current user id to Dockerfile
docker build -t swampy/jrnl --build-arg userid=$UID .
