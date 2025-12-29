programa {
  funcao inicio() {
    cadeia jogo[3][3]
    inteiro linha, coluna, ganhou=2, x, linhaPalp, colunaPalp, jogadas=0

    escreva ("JOGO DA VELHA\n--------------\n\n")

    para (linha=0; linha<=2; linha++) {
      para (coluna=0; coluna<=2; coluna++) {
        jogo[linha][coluna] = " "
        escreva (jogo[linha][coluna])
        se (coluna >= 0) {
          escreva (" | ")
        }
      }
      escreva ("\n")
    }
    escreva("0   1   2\n\n")

    enquanto (ganhou != 1 e ganhou != e jogadas < 9) {
      para (x=1; x<=2; x++) {
        escreva ("jogador ",x,", digite a linha: ")
        leia (linhaPalp)
        escreva ("jogador ",x,", digite a coluna: ")
        leia (colunaPalp)
        escreva ("\n")
        
        se (jogo[linhaPalp][colunaPalp] != " ") {
          escreva ("voce perdeu a vez, lugar ocupado")
          escreva ("\n\n")
        } senao {
          se (x == 1) {
            jogo[linhaPalp][colunaPalp] = "X"
          } senao {
            jogo[linhaPalp][colunaPalp]= "O"
          }  
          jogadas++
        }

        para (linha=0; linha<=2; linha++) {
          para (coluna=0; coluna<=2; coluna++) {
            escreva (jogo[linha][coluna])
            se (coluna >= 0) {
             escreva (" | ")
            }
          }
          escreva ("\n")
        }
        escreva("0   1   2\n\n")              
  
          
        para (linha=0; linha<=2; linha++) {
          se (jogo[linha][0] == "O" e jogo[linha][1] == "O" e jogo[linha][2] == "O") {
            ganhou = 1
            pare
          } senao se (jogo[linha][0] == "X" e jogo[linha][1] == "X" e jogo[linha][2] == "X") {
            ganhou = 2
            pare
          } senao {
            ganhou = 3
          }
        } 
        para (coluna=0; coluna<=2; coluna++) {
          se (jogo[0][coluna] == "O" e jogo[1][coluna] == "O" e jogo[2][coluna] == "O") {
            ganhou = 1
            pare
          } senao se (jogo[0][coluna] == "X" e jogo[1][coluna] == "X" e jogo[2][coluna] == "X") {
            ganhou = 2
            pare
          } senao {
            ganhou = 3
          }
        } 
        se (jogo[0][0] == "O" e jogo[1][1] == "O" e jogo[2][2] == "O") {
          ganhou = 1
          pare
        } senao se (jogo[0][0] == "X" e jogo[1][1] == "X" e jogo[2][2] == "X") {
          ganhou = 2
          pare
        } senao {
          ganhou = 3
        }
        se (jogo[0][2] == "O" e jogo[1][1] == "O" e jogo[2][0] == "O") {
          ganhou = 1
          pare
        } senao se (jogo[0][2] == "X" e jogo[1][1] == "X" e jogo[2][0] == "X") {
          ganhou = 2
          pare
        } senao {
          ganhou = 3
        }
      } 
    }
    se (ganhou == 1) {
      escreva ("parabéns! vitória o jogador 2")
    } senao se (ganhou == 2) {
      escreva ("parabéns! vitória ao jogador 1")
    } senao {
      escreva ("deu velha")
    }
  }
}  
