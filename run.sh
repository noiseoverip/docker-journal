#!/bin/bash
# Uses env vars:
# 	JOURNAL_FILES_PATH - path to where journal files defined in .jrnl_config are saved

source .config
docker run -it --rm -u jrnl --name=jrnl -v ~/.jrnl_config:/home/jrnl/.jrnl_config -v ${JOURNAL_FILES_PATH}:${JOURNAL_FILES_PATH} swampy/jrnl jrnl $1
