#!/bin/bash

frase_chaves=(# Chaves
    "Foi sem querer, querendo. - Chaves."
    "Tá bom, mas não se irrite! - Chaves."
    "Tudo eu! Tudo eu! Tudo eu! - Chaves."
    "Isso, isso, isso! - Chaves."
    "Ninguém tem paciência comigo. - Chaves."
    "É que me escapuliu! - Chaves."
    "O verso é repetido quarenta e quatro vezes! - Chaves."
    "É que eu só tenho oito anos. - Chaves."
    "Outro gato! - Chaves."
    "Quem dá e tira com o diabo fica, sua mão se danifica, sua vó será maldita e sua sogra ressuscita. - Chaves."
    # Seu Madruga
    "A vingança nunca é plena, mata a alma e envenena. - Seu Madruga."
    "Não existe trabalho ruim, o ruim é ter que trabalhar. - Seu Madruga."
    "Eu só não te dou outra porque... - Seu Madruga."
    "O que é que foi, o que é que foi, o que é que há? - Seu Madruga."
    "Por que eu juro que nunca tive em minhas mãos uma mãozinha tão pequena como essa. - Seu Madruga."
    "Se quiser chegar a ser alguém, devore os livros! - Seu Madruga."
    "Quando a fome aperta, a vergonha afrouxa. - Seu Madruga."
    "Quantas vezes já te deixei na mão? Não responda! - Seu Madruga"
    "Essa caveira significa prerigo, entenderam bem? PRE-RI-GO! - Seu Madruga"
    # Quico
    "Você não vai com a minha cara?! - Quico."
    "Cale-se, cale-se, cale-se, você me deixa looooouco! - Quico."
    "Gentalha! Gentalha! - Quico."
    "Que coisa, não? - Quico."
    "Já se foi o disco voador - Quico."
    "Miauuuuuuuuuuuuuuuuuuuuu - Quico."
    # Professor Girafales
    "Por que causa, motivo, razão ou circunstância? - Professor Girafales."
    "Sou Linguiça de sobrenome mestre, digo, sou Professor e meu nome é Girafales. - Professor Girafales."
    "Somente uma vez eu me enganei. Uma vez que pensei estar enganado! - Professor Girafales."
    # Dona Florinda
    "Vamos, tesouro, não se misture com essa gentalha! - Dona Florinda."
    "Que milagre o senhor por aqui! - Dona Florinda."
    "O senhor não quer entrar pra tomar uma xícara de café? - Dona Florinda."
    # Chiquinha
    "O que você tem de burro, você tem de burro. - Chiquinha."
    "Pois é, pois é, pois é. - Chiquinha."
    # Dona Clotilde
    "Quantas vezes tenho que te dizer que não sou nenhuma bruxa? - Dona Clotilde."
    "É você satanás? - Dona Clotilde."
    # Nhonho
    "Olha ele, hein! Olha ele, hein! - Nhonho."
    # Pópis
    "Conta tudo para a sua mãe! - Pópis."
    # Jaiminho
    "Quero evitar a fadiga. - Carteiro Jaiminho."
    # Outros personagens
    "Tinha que ser o Chaves de novo! - Todos os personagens.")

ini="0"
end=${#frase_chaves[@]}
default="Volta o cão arrependido com suas orelhas tão fartas, com o osso roido e o rabo entre as patas! - Chaves."
num_sort=$((RANDOM % $end + $ini))

[ "$num_sort" == "$end" ] && echo -e "$default" || echo -e "${frase_chaves[$num_sort]}"
