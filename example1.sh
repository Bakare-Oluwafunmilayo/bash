#!/bin/bash
first-name="ola"
school="Codar"
email="ola@codar.com"

echo "The name of my school is ${school:?'Undefined'}"

echo "The user is ${USER}"

echo -e "This is a statement \n This will appear on a new line"