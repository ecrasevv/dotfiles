#!/bin/bash

# save the output in a variable 
temperature=$(sensors | grep -oP 'CPU:\s+\K[+-]\d{1,3}\.\d°C')

echo "$temperature"
