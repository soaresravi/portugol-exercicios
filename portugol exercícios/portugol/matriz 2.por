programa {
  funcao inicio() {
    real salario[3][5]
    inteiro linha, coluna, maior=0, menor=0

    escreva ("TABELA DE SALÁRIOS\n------------------\n")

    para (linha=0; linha<=2; linha++) {
      para (coluna=0; coluna<=4; coluna++) {
        escreva ("digite o salário: ")
        leia (salario[linha][coluna])
      }
    }
    para (linha=0; linha<=2; linha++) {
      para (coluna=0; coluna<=4; coluna++) {
        escreva ("\n",salario[linha][coluna]," ")
      }
      escreva ("\n")
    }
    
    para (linha=0; linha<=2; linha++) {
      para (coluna=0; coluna<=4; coluna++) {
        se (salario[linha][coluna] > maior) {
          maior= salario[linha][coluna]
        }
        se (menor == 0) {
          menor= salario[linha][coluna]
        } senao se (menor > salario[linha][coluna]) {
          menor= salario[linha][coluna]
        }
      }
    }
    escreva ("\n o maior salário desses é ",maior,"\n")
    escreva ("o menor salário é ",menor)
  }
}
