#!/bin/bash

# Removes all '?' characters from the data file (in R, empty values are interpreted as NA's by default).

sed 's/?//g' -i household_power_consumption.txt
