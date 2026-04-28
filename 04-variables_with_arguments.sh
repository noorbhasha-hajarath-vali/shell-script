#!/bin/bash

# Arguments passed, you will provide values in command
person1=$1
person2=$2

echo "${person1}: Hello ${person2}, how are you?"
echo "${person2}: Hi ${person1}, I'm doing well, thank you! How about you?"
echo "${person1}: I'm good too, thanks for asking ${person2}!"
echo "${person2}: What are your plans for the weekend, ${person1}?"
echo "${person1}: Let's go hiking together, ${person2}! It will be fun!"
echo "${person2}: That sounds great, ${person1}! I'm looking forward to it!"

# Run command to execute as below 
# sh 04-variables_with_arguments.sh Vali Srikanth