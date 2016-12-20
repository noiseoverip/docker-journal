FROM python:3
MAINTAINER SauliusAlisauskas <alisauskas.saulius@gmail.com>

RUN pip install pycrypto; pip install jrnl[enctrypted]

# Create new user with same id as user that build container
# so that container would have same access to files
ARG userid
RUN adduser --uid ${userid} --disabled-password jrnl; 

# Install Vim to edit journal files
RUN apt-get update; apt-get install -y vim
