#!/bin/bash
#create a simple program that calculate the hypotenus of a triange. program should prompt the user for values: adj and opp (Hint: opp/adj)


# Prompt the user for the opposite and adjacent sides
read -p "Enter Adjacent value: " adjacent
read -p "Enter Opposite value: " opp

hypothenus=$(($opposite / $adjacent))
remainder=$(($opposite / $adjacent))

# Calculate hypotenuse using Pythagorean theorem
#hypotenuse=$(echo "scale=4; sqrt($opp^2 + $adj^2)" | bc -l)

# Display the result
echo "The hypotenuse of the triangle is: ${hypothenus}cm"
echo "Remainder: ${remainder}"
