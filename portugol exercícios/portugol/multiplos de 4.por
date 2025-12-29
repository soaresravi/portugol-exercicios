programa {
  funcao inicio() {
    inteiro num, x, resto

    escreva ("digite um número inteiro: ")
    leia (num)

    para (x=num; x >=0; x--) {
      resto= x % 4
      se (resto == 0) {
        escreva ("[",x,"]\n")
      } senao {
        escreva (x,"\n")
      }
    }
  }
}
