#!/bin/bash

# Exibe a frase
function ler_frase {
    # escolhe o personagem
    personagens=$1
    endPersonagem=${#personagens[@]}
    indiceEscolhido=$((RANDOM % $endPersonagem + 0))
    personagemEscolhido=${personagens[$indiceEscolhido]}

    # pega a frase do personagem
    carregar_frases_$personagemEscolhido

    # exibe a frase
    imprimir_frase "$frases" "$apelidos"
}

# frases do Chaves
function carregar_frases_chaves {
    frases=(
        "Foi sem querer, querendo."
        "Tá bom, mas não se irrite!"
        "Tudo eu! Tudo eu! Tudo eu!"
        "Isso, isso, isso!"
        "Ninguém tem paciência comigo."
        "É que me escapuliu!"
        "O verso é repetido quarenta e quatro vezes!"
        "É que eu só tenho oito anos."
        "Outro gato!"
        "Quem dá e tira com o diabo fica, sua mão se danifica, sua vó será maldita e sua sogra ressuscita."
    )

    apelidos=(
        "Chaves"
        "Chavinho"
    )   
}

# frases do Seu Madruga
function carregar_frases_madruga {
    frases=(
        "A vingança nunca é plena, mata a alma e envenena."
        "Não existe trabalho ruim, o ruim é ter que trabalhar."
        "Eu só não te dou outra porque..."
        "O que é que foi, o que é que foi, o que é que há?"
        "Por que eu juro que nunca tive em minhas mãos uma mãozinha tão pequena como essa."
        "Se quiser chegar a ser alguém, devore os livros!"
        "Quando a fome aperta, a vergonha afrouxa."
        "Quantas vezes já te deixei na mão? Não responda!"
        "Essa caveira significa prerigo, entenderam bem? PRE-RI-GO!"
    )

    apelidos=(
        "Seu Madruga"
        "Madruguinha"
        "Chipanzé reumático"
        "Tripa seca"
        "Espantalho"
        "Lombriga anêmica"
    )
}

# frases do Quico
function carregar_frases_quico {
    frases=(
        "Você não vai com a minha cara?!"
        "Cale-se, cale-se, cale-se, você me deixa looooouco!"
        "Gentalha! Gentalha!"
        "Que coisa, não?"
        "Já se foi o disco voador "
        "Miauuuuuuuuuuuuuuuuuuuuu"
        "Eu te empresto pra você ver que eu sou um menino bom que ajuda os meninos pobres do terceiro mundo."
    )

    apelidos=(
        "Quico"
        "Frederico"
    )
}

# frases do Professor Girafales
function carregar_frases_girafales {
    frases=(
        "Por que causa, motivo, razão ou circunstância?"
        "Sou Linguiça de sobrenome mestre, digo, sou Professor e meu nome é Girafales."
        "Somente uma vez eu me enganei. Uma vez que pensei estar enganado!"
    )

    apelidos=(
        "Professor Girafales"
        "Mestre linguiça"
        "Quilômetro parado"
        "Tobogã de salto alto"
        "Mangueira de bombeiros"
        "Inocencio Girafales"

    )
}

# frases da Dona Florinda
function carregar_frases_florinda {
    frases=(
        "Vamos, tesouro, não se misture com essa gentalha!"
        "Que milagre o senhor por aqui!"
        "O senhor não quer entrar pra tomar uma xícara de café?"
    )

    apelidos=(
        "Dona Florinda"
        "Velha valentona"
        "Florinda Corcuera y Villalpando viúva de Matalascallando"
    )
}

# frases da Chiquinha
function carregar_frases_chiquinha {
    frases=(
        "O que você tem de burro, você tem de burro."
        "Pois é, pois é, pois é."
    )

    apelidos=(
        "Chiquinha"
        "Chilindrina"
    )
}

# frases da Dona Clotilde
function carregar_frases_clotilde {
    frases=(
        "Quantas vezes tenho que te dizer que não sou nenhuma bruxa?"
        "É você satanás?"
    )

    apelidos=(
        "Dona Clotilde"
        "Bruxa do 71"
    )
}

# frases do Nhonho
function carregar_frases_nhonho {
    frases=(
        "Olha ele, hein! Olha ele, hein!"
    )

    apelidos=(
        "Nhonho"
        "Febronio Barriga Gordorritúa"
    )
}

# frases da Pópis
function carregar_frases_popis {
    frases=(
        "Conta tudo para a sua mãe!"
    )

    apelidos=(
        "Pópis"
    )
}

# frases do Jaiminho
function carregar_frases_jaiminho {
    frases=(
        "Quero evitar a fadiga."
    )

    apelidos=(
        "Carteiro Jaiminho"
    )
}

# frases do Godinez
function carregar_frases_godinez {
    frases=(
        "Não fui eu!"
    )

    apelidos=(
        "Godinez"
    )
}

# frases que todos usam
function carregar_frases_todos {
    frases=(
        "Tinha que ser o Chaves de novo!"
    )

    apelidos=(
        "Quico"
        "Chiquinha"
        "Seu Madruga"
        "Senhor Barriga"
        "Dona Florinda"
        "Dona Clotildess"
    )
}


# imprime a frase 
function imprimir_frase {
    frases=$1
    apelidos=$2

    endFrase=${#frases[@]}
    endApelido=${#apelidos[@]}
    
    default="Volta o cão arrependido com suas orelhas tão fartas, com o osso roido e o rabo entre as patas! - Chaves."

    ini="0"
    num_sort_frase=$((RANDOM % $endFrase + $ini))
    num_sort_apelido=$((RANDOM % $endApelido + $ini))

    [ "$num_sort_frase" == "$endFrase" ] && echo -e "$default" || echo -e "${frases[$num_sort_frase]} - ${apelidos[$num_sort_apelido]}."
}

personagens=(
    "chaves"
    "madruga"
    "quico"
    "girafales"
    "florinda"
    "chiquinha"
    "clotilde"
    "nhonho"
    "popis"
    "jaiminho"
    "godinez"
    "todos"
)

ler_frase "$personagens"
