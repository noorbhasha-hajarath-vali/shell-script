#!/bin/bash

BOLD="\e[1m"
DIM="\e[2m"
UNDERLINE="\e[4m"
BLINK="\e[5m"
REVERSE="\e[7m"
HIDDEN="\e[8m"
RESET="\e[0m"

printf "$BOLD this is bold text $RESET"
echo -e "$DIM this is bold text $RESET"
echo -e "$UNDERLINE this is bold text $RESET"
echo -e "$BLINK this is bold text $RESET"
echo -e "$REVERSE this is bold text $RESET"
echo -e "$HIDDEN this is bold text $RESET"
