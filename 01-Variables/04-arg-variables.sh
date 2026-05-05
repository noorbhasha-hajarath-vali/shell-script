#!/bin/bash

# Variables
PERSON1=$1
PERSON2=$2

# we need to pass argument values while executing the command

echo "${PERSON1}: Hi ${PERSON2}, How are you"
echo "${PERSON2}: Hello ${PERSON1}, all good, How about you"
echo "${PERSON1}: good, thanks for asking, what are you learning these days"
echo "${PERSON2}: i am practicing Shell Scripting"
echo "${PERSON1}: Ohh, thats good option, Let me know if any help needed"
echo "${PERSON2}: Sure, Thanks ${PERSON1}"

# Execute Command is
# sh 04-arg-variables.sh Ramesh Suresh