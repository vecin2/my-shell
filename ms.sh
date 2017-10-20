#!/bin/bash
command=$1
#pass all the parameter down except the first one
shift
./autocompletion/commands-available/$command.sh $@
