#!/bin/bash

die()
{
    echo "Fatal error $*"
    exit 1
}

check_last_command()
{
    [ $? -ne 0 ] && die "Last command execution failure"
}

VIMRC=~/.vimrc
VIMRCTMP=${VIMRC}.tmp
VIMRCBAK=${VIMRC}.bak

FILESTOTAG=~/.files_to_tag.tmp
VIMTAGS=~/.vimtags_genpde

CODE_ROOT=~/Documents/Code/GenPDE

# We add the tages to the .vimrc, between these autogentags:
AUTOGENSTART='"AUTO_GEN_START'
AUTOGENEND='"AUTO_GEN_END'

gen_tags()
{
    echo "" > ${VIMTAGS}
    rm ${VIMTAGS}
    ECHO "Scanning folder ${CODE_ROOT} to generate list of files to generate tags from (> ${FILESTOTAG})..."
    find ${CODE_ROOT} -name '*.cpp' -o -name '*.h' -o -name '*.cc' -o -name '*.c' -o -name '*.hi' -follow > ${FILESTOTAG} && check_last_command
    echo "Done."
    echo "Generating vim tags file (${VIMTAGS})..."
    ctags -L ${FILESTOTAG} -f ${VIMTAGS}
    echo "Done."
    echo "Backing up vim ocnfiguration file (${VIMRC} > ${VIMRCBAK})" && check_last_command
    cp ${VIMRC} ${VIMRCBAK} && check_last_command
    echo "Updating ${VIMRC} with new tags file"
    cat ${VIMRC} | sed "/${AUTOGENSTART}/,/${AUTOGENEND}/d" > ${VIMRCTMP} && check_last_command
    echo "${AUTOGENSTART}" >> ${VIMRCTMP} && check_last_command
    echo "set tag+=${VIMTAGS}" >> ${VIMRCTMP} && check_last_command
    echo "${AUTOGENEND}" >> ${VIMRCTMP} && check_last_command
    mv ${VIMRCTMP} ${VIMRC} && check_last_command
    echo "Updated vim configuration file (${VIMRC})"
}

gen_tags
