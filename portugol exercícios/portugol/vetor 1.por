programa {
  funcao inicio() {
    real a[10], b[10]
    inteiro posicao, valor=10

    posicao=0
    enquanto (posicao <=9) {
      escreva ("digite o valor do vetor A: ")
      leia (a[posicao])
      escreva ("digite o valor do vetor B: ")
      leia (b[posicao])

      se (a[posicao] == b[posicao]) {
        escreva ("\n os dois valores na posição ",posicao, " estão iguais")
        valor--
      }
    posicao++  
    }
    se (valor == 10) {
      escreva ("\n não existe nenhum valor igual na mesma posição")
    }
  }
}
