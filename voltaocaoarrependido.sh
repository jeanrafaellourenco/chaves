#!/bin/bash

# How to Catch Ctrl-C in Shell Script: https://stackpointer.io/script/how-to-catch-ctrl-c-in-shell-script/248/
# this function is called when Ctrl-C is sent
function trap_ctrlc ()
{
    # perform cleanup here
    echo -e "\nO verso se repete quarenta e quatro vezes."
 
    # exit shell script with error code 2
    # if omitted, shell script will continue execution
    exit 2
}
 
# initialise trap to call trap_ctrlc function
# when signal 2 (SIGINT) is received
trap "trap_ctrlc" 2

for ((i = 1 ; i < 45 ; i++)); do
echo "$i - Volta o cão arrependido com suas orelhas tão fartas, com o osso roido e o rabo entre as patas!"
sleep 2
done
