programa {
  funcao inicio() {
    caracter letra[3][5]
    inteiro linha, coluna, contador=0

    para (linha=0; linha<=2; linha++) {
      para (coluna=0; coluna<=2; coluna++) {
        escreva ("digite a letra da linha ",linha," coluna ",coluna,": ")
        leia (letra[linha][coluna])
      }
    } 
    para (linha=0; linha<=2; linha++) {
      para (coluna=0; coluna<=2; coluna++) {
        escreva (letra[linha][coluna]," ")
      }
      escreva ("\n")  
    }
    para (linha=0; linha<=2; linha++) {
      para (coluna=0; coluna<=2; coluna++) {
        se (letra[linha][coluna] == "a" ou letra[linha][coluna] == "e" ou letra[linha][coluna] == "i" ou letra[linha][coluna] == "o" ou letra[linha][coluna] == "u") {
          contador++
        }
      }
    }
    escreva ("possuem ",contador," vogais")
  }
}
