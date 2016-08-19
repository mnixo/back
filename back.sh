#!/usr/bin/env bash

function back () {
    
    wd=$(pwd)
    nparts=0
    target=-1

    # for each part of the current working directory path
    for i in $(echo $wd | tr "/" "\n"); do
        # if $1 is a part set target as the part position
        if [[ "$1" == "${i}" ]] ; then
            target=$((nparts))
        fi
        ((nparts++))
    done
    
    # if target has not been set
    if [ $target = -1 ] ; then
        if [ -z "$1" ]; then
            # if $1 was not set
            steps=1
        elif [[ $1 =~ '^[0-9]+$' ]] ; then
            # if $1 is an integer
            steps=$1
        else
            # $1 is not an appropriate value
            echo "$1 is not a directory in the path $wd"
            return
        fi
    else
        # number of parts after the target part position
        steps=$((nparts-target-1))
    fi
    
    # create command to change directory down once for each step
    for (( i=0 ; i<$steps ; ++i )) do
        if [[ $i == 0 ]] ; then
            cmd="cd ../"
        else
            cmd="$cmd../"
        fi
    done

    # evaluate command
    eval $cmd

}
