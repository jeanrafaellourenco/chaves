#!/bin/bash
# https://www.youtube.com/watch?v=nUZ0GhVy7Ms

test $(which pv) || { echo -e "$0: pacote 'pv' requerido: sudo apt-get install -y pv";  exit 1; }

# How to Catch Ctrl-C in Shell Script: https://stackpointer.io/script/how-to-catch-ctrl-c-in-shell-script/248/
# this function is called when Ctrl-C is sent
function trap_ctrlc ()
{
    # perform cleanup here
    echo -e "\n\t\t\t\tAi cale-se, cale-se, cale-se, você me deixa louco!"
 
    # exit shell script with error code 2
    # if omitted, shell script will continue execution
    exit 2
}
 
# initialise trap to call trap_ctrlc function
# when signal 2 (SIGINT) is received
trap "trap_ctrlc" 2

echo -e "Prof. Girafales: Vim trazer o seu presente de aniversário." | pv -qL 15; sleep 1
echo -e "Quico: Um gatoooooo..." | pv -qL 15; sleep 1
echo -e "Chaves: Nananão, isso não é gato não é um massacote." | pv -qL 15; sleep 1
echo -e "Prof. Girafales:  Mascote!" | pv -qL 15; sleep 1

while true; do
  echo -e "Chaves: E o que eu disse?"   | pv -qL 15; sleep 1
  echo -e "Prof. Girafales: Massacote"  | pv -qL 15; sleep 1
  echo -e "Chaves: E como é?"           | pv -qL 15; sleep 1
  echo -e "Prof. Girafales: Mascote!"   | pv -qL 15; sleep 1
done

