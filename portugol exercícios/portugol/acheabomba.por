programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    cadeia jogo[10][10]
    inteiro linha, coluna, bombaLinha, bombaColuna, ganhou=2, linhaPalp, colunaPalp, x, tentativas=10

    escreva ("ACHE A BOMBA (5X5)\n--------------------\n\n")

    para (linha=0; linha<=4; linha++) {
      para (coluna=0; coluna<=4; coluna++) {
        jogo[linha][coluna] = " "
      }
    }

    para (linha=0; linha<=4; linha++) {
      para (coluna=0; coluna<=4; coluna++) {
        escreva (jogo[linha][coluna])
        se (coluna >= 0) {
          escreva ("|")
        }
      }
      escreva ("\n")
    }
    para (x=0; x<=4; x++) {
      escreva (x," ")
    }
    escreva ("\n\n")
    bombaLinha= u.sorteia(0,4)
    bombaColuna= u.sorteia(0,4)

    enquanto (ganhou != 1) {
      escreva ("digite a linha: ")
      leia (linhaPalp)
      escreva ("digite a coluna: ")
      leia (colunaPalp)

      se (linhaPalp == bombaLinha e colunaPalp == bombaColuna) {
        jogo[linhaPalp][colunaPalp] = "X"
        para (linha=0; linha<= 4; linha++) {
          para (coluna=0; coluna<=4; coluna++) {
            escreva (jogo[linha][coluna])
            se (coluna >= 0) {
              escreva ("|")
            }
          }
          escreva ("\n")
        }
        para (x=0; x<=4; x++) {
          escreva (x," ")
        }
      escreva ("\n")
      escreva ("Parabéns ! Você achou a bomba")
      ganhou = 1
      pare
      } senao {
        tentativas--
        jogo[linhaPalp][colunaPalp] = "0"
        para (linha=0; linha<= 4; linha++) {
          para (coluna=0; coluna<=4; coluna++) {
            escreva (jogo[linha][coluna])
            se (coluna >= 0) {
              escreva ("|")
            }
          }
          escreva ("\n")
        }
        para (x=0; x<=4; x++) {
          escreva (x," ")
        }
        escreva ("\n\n")
        se (tentativas > 0) {
          escreva ("restam ",tentativas," tentativas")
        } senao {
          escreva ("suas tentativas acabaram :( a bomba estava na linha ",bombaLinha," e coluna ",bombaColuna)
          jogo[bombaLinha][bombaColuna] = "X"
          para (linha=0; linha<= 4; linha++) {
            para (coluna=0; coluna<=4; coluna++) {
              escreva (jogo[linha][coluna])
              se (coluna >= 0) {
                escreva ("|")
              }
            }
          escreva ("\n")
          }
          para (x=0; x<=4; x++) {
            escreva (x," ")
          }
          pare
        }
      }
      escreva ("\n")
    ganhou++  
    }
  }
}
