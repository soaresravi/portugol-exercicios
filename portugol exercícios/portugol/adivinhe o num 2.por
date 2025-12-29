programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro sorteado, tentativas=4, tentativa

    sorteado= u.sorteia(1,10)

    enquanto (tentativas > 0) {
      escreva ("digite um número de 1 a 10 e tente acertar o número sorteado: ")
      leia (tentativa)

      se (tentativa == sorteado) {
        escreva ("parabéns! você acertou o número sorteado")
        pare
      } senao {       
        se (tentativas == 0) {
          escreva ("as tentativas acabaram! sinto muito :( o número sorteado era ",sorteado)
        } senao {
          escreva ("tente novamente\n")
        }
        tentativas--
      }
    }
  }
}
