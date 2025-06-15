#!/bin/bash

# Assign command-line arguments
num1=10
operator=+
num2=30

# Check if all arguments are provided
if [[ -z "$num1" || -z "$operator" || -z "$num2" ]]; then
  echo "Usage: $0 <number1> <operator> <number2>"
  exit 1
fi

# Perform calculation
case "$operator" in
  +)
    result=$(echo "$num1 + $num2" | bc)
    ;;
  -)
    result=$(echo "$num1 - $num2" | bc)
    ;;
  \*)
    result=$(echo "$num1 * $num2" | bc)
    ;;
  /)
    if [ "$num2" == 0 ]; then
      echo "Error: Division by zero"
      exit 1
    fi
    result=$(echo "scale=2; $num1 / $num2" | bc)
    ;;
  *)
    echo "Invalid operator. Use +, -, *, or /"
    exit 1
    ;;
esac

# Print the result
echo "Result: $result"
