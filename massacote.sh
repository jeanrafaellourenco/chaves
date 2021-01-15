#!/bin/bash

test $(which pv) || { echo -e "$0: pacote 'pv' requerido: sudo apt-get install -y pv";  exit 1; }

echo -e "Prof. Girafales: Vim trazer o seu presente de aniversário." | pv -qL 15; sleep 1
echo -e "Quico: Um gatoooooo..." | pv -qL 15; sleep 1
echo -e "Chaves: Nananão, isso não é gato não é um massacote." | pv -qL 15; sleep 1
echo -e "Prof. Girafales:  Mascote!" | pv -qL 15; sleep 1
  
while true; do
  echo -e "Chaves: E o que eu disse?" | pv -qL 15; sleep 1
  echo -e "Prof. Girafales: Massacote" | pv -qL 15; sleep 1
  echo -e "Chaves: E como é?" | pv -qL 15; sleep 1
  echo -e "Prof. Girafales: Mascote!" | pv -qL 15; sleep 1
done
