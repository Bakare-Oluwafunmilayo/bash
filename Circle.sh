#!/bin/bash
#1.create a simple program to calculate the area of a circle. Given a raius of 7cm and a PI of 3.142


# Define variables
radius=7
pi=3.142

# Calculate area
area=$(echo "$pi * $radius * $radius" | bc) # bc allows you to add floating numbers 3.421 Linux bc command (short for basic calculator) is a command-line utility that acts as a scientific calculator

# Display the result
echo "The area of the circle with radius $radius cm is: $area cm²"
