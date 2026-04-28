#!/bin/bash

DATE=$(date)

echo "Today's Date is ${DATE}"

START_DATE=$(date +%s)

echo "Started in seconds ${START_DATE}"

sleep 5

END_DATE=$(date +%s)

echo "Ended in seconds ${END_DATE}"

TOTAL=$((END_DATE-START_DATE))

echo "Command execution time is: ${TOTAL} seconds"