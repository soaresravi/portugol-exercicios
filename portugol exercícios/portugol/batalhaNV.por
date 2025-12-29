programa {
  cadeia jogo[10][10], barco
  inteiro linha, coluna, x, jogadas=1, y, fim=0, valor=0

  funcao mostrarTab() {
    limpa()
    para (linha=0; linha<=9; linha++) {
      para (coluna=0; coluna<=9; coluna++) {
        escreva (jogo[linha][coluna]," | ")
      }
      escreva ("\n")
    }
  }

  funcao iniciaTab() {
    para (linha=0; linha<=9; linha++) {
      para (coluna=0; coluna<=9; coluna++) {
        jogo[linha][coluna] = " "
      }
    }
  } 
  
  funcao inicio() {
    mostrarTab()
    para (x=0; x<=9; x++) {
      escreva (x,"  ") 
    }
    iniciaTab()
    escreva ("\n")

    faca {
      para (y=1; y<=4; y++) {
        escreva ("\nadicione a posição do ",y,"° submarino. LINHA: ")
        leia (linha)
        escreva ("adicione a posição do ",y,"° submarino. COLUNA: ")
        leia (coluna)

        se (coluna == 0) {
          se ((jogo[linha][coluna] == " ") e (jogo[linha][coluna+1] == " ")) {
            jogo[linha][coluna] = "S"
          } 
        } senao se (coluna == 9) {
            jogo[linha][coluna] = "S"
        } senao se ((jogo[linha][coluna+1] == " ") e (jogo[linha][coluna-1] == " ")) {
            jogo[linha][coluna] = "S"
        }  
        jogadas++
        mostrarTab()
        para (x=0; x<=9; x++) {
          escreva (x,"   ") 
        } 
      }
    } enquanto (jogadas <=4)

    escreva ("\n")

    faca {
      para (y=1; y<=3; y++) {
        escreva ("\nadicione a posição do ",y,"° fragátas. LINHA: ")
        leia (linha)
        escreva ("adicione a posição do ",y,"° fragátas. COLUNA: ")
        leia (coluna)

        se (coluna == 0) {
          se ((jogo[linha][coluna] == " ") e (jogo[linha][coluna+1] == " ") e (jogo[linha][coluna+2] == " ")) {
            jogo[linha][coluna] = "F"
            jogo[linha][coluna+1] = "F"
          }  
        } senao se (coluna == 9) {
            jogo[linha][coluna] = "F"
            jogo[linha][coluna+1] = "F"
        } senao se ((jogo[linha][coluna+1] == " ") e (jogo[linha][coluna-1] == " ")) {
            jogo[linha][coluna] = "F"
            jogo[linha][coluna+1] = "F"
        }  
        jogadas++
        mostrarTab()
        para (x=0; x<=9; x++) {
          escreva (x,"   ") 
        }
      }  
    } enquanto (jogadas <=7)

    escreva ("\n")

    faca {
      para (y=1; y<=2; y++) {
        escreva ("\nadicione a posição do ",y,"° destróier. LINHA: ")
        leia (linha)
        escreva ("adicione a posição do ",y,"° destróier. COLUNA: ")
        leia (coluna)

        se (coluna == 0) {
          se ((jogo[linha][coluna] == " ") e (jogo[linha][coluna+1] == " ") e (jogo[linha][coluna+2] == " ")) {
            jogo[linha][coluna] = "D"
            jogo[linha][coluna+1] = "D"
            jogo[linha][coluna+2] = "D"
          }  
        } senao se (coluna == 9) {
            jogo[linha][coluna] = "D"
            jogo[linha][coluna+1] = "D"
            jogo[linha][coluna+2] = "D"
        } senao se ((jogo[linha][coluna+1] == " ") e (jogo[linha][coluna-1] == " ")) {
          jogo[linha][coluna] = "D"
          jogo[linha][coluna+1] = "D"
          jogo[linha][coluna+2] = "D"
        }  
        jogadas++
        mostrarTab()
        para (x=0; x<=9; x++) {
          escreva (x,"   ") 
        }
      }
    } enquanto (jogadas <=9)

    escreva ("\n")

    faca {
      escreva ("\nadicione a posição do porta avião. LINHA: ")
      leia (linha)
      escreva ("adicione a posição do porta avião. COLUNA: ")
      leia (coluna)

      se (coluna == 0) {
        se ((jogo[linha][coluna] == " ") e (jogo[linha][coluna+1] == " ") e (jogo[linha][coluna+2] == " ")) {
          jogo[linha][coluna] = "P"
          jogo[linha][coluna+1] = "P"
          jogo[linha][coluna+2] = "P"
          jogo[linha][coluna+3] = "P"
        }  
      } senao se (coluna == 9) {
        jogo[linha][coluna] = "P"
        jogo[linha][coluna+1] = "P"
        jogo[linha][coluna+2] = "P"
        jogo[linha][coluna+3] = "P"
      } senao se ((jogo[linha][coluna+1] == " ") e (jogo[linha][coluna-1] == " ")) {
        jogo[linha][coluna] = "P"
        jogo[linha][coluna+1] = "P"
        jogo[linha][coluna+2] = "P"
        jogo[linha][coluna+3] = "P"
      }        
      jogadas++
      mostrarTab()
      para (x=0; x<=9; x++) {
        escreva (x,"   ") 
      }
    } enquanto (jogadas == 10)

    escreva ("\n")
    
    escreva("parabéns! vc encerrou o jogo")
  }  
}

