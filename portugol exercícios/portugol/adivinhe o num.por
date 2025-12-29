programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro sorteado, tentativas, tentativa

    sorteado= u.sorteia(0,100)

    tentativa=0
    tentativas=0

    enquanto (tentativa != sorteado) {
      escreva ("digite um número de 0 a 100 para adivinhar o número sorteado: ")
      leia (tentativa)
      tentativas++
      se (tentativa > sorteado) {
        escreva ("o número digitado é maior que o sorteado\n")
      } senao se (tentativa < sorteado) {
        escreva ("o número digitador é menor do que o sorteado\n")
      } senao {
        escreva ("parabéns! você acertou em ",tentativas," tentativas")
        pare
      }
    }
  }
}
