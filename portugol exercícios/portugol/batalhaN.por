programa {
  cadeia jogo[10][10], barco
  inteiro linha, coluna, x, jogadas=1, colunaPalp, linhaPalp, y

  funcao mostrarTab() {
    para (linha=0; linha<=9; linha++) {
      para (coluna=0; coluna<=9; coluna++) {
        jogo[linha][coluna] = " "
        escreva (jogo[linha][coluna])
        se (coluna >= 0) {
          escreva (" |")
        }
      }
      escreva ("\n")
    }

    para (x=0; x<=9; x++) {
      escreva (x,"  ")
    }
  }
  
  funcao inicio() {
    mostrarTab()
    escreva ("\n")
    faca {
      para (y=1; y<=4; y++) {
        escreva ("\nadicione a posição do ",y,"° submarino (0-9). LINHA: ")
        leia (linhaPalp)
        escreva ("adicione a posição do ",y,"° submarino (0-9). COLUNA: ")
        leia (colunaPalp)
        jogo[linhaPalp][colunaPalp] = "S"
        jogadas++
      }
    } enquanto (jogadas <=4)

    faca {
      para (y=1; y<=3; y++) {
        escreva ("\nadicione a posição do ",y,"° destróier (0-8). LINHA: ")
        leia (linhaPalp)
        escreva ("adicione a posição do ",y,"° destróier (0-8). COLUNA: ")
        leia (colunaPalp)
        jogo[linhaPalp][colunaPalp] = "D"
        jogadas++
      }
    } enquanto (jogadas <=7)

    faca {
      para (y=1; y<=2; y++) {
        escreva ("\nadicione a posição do ",y,"° fragata (0-7). LINHA: ")
        leia (linhaPalp)
        escreva ("adicione a posição do ",y,"° fragata (0-7). COLUNA: ")
        leia (colunaPalp)
        jogo[linhaPalp][colunaPalp] = "F"
        jogadas++
      }
    } enquanto (jogadas <=9)

    faca {
      escreva ("\nadicione a posição do porta avião (0-6). LINHA: ")
      leia (linhaPalp)
      escreva ("adicione a posição do porta avião (0-6). COLUNA: ")
      leia (colunaPalp)
      jogo[linhaPalp][colunaPalp] = "P"
      jogadas++
    } enquanto (jogadas == 10)

    mostrarTab()
  }
}
