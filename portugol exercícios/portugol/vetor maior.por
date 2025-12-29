programa {
  funcao inicio() {
    inteiro numeros[10], x, maior=0

    para (x=0; x<=9; x++) {
      escreva ("digite o ",(x+1),"° número: ")
      leia (numeros[x])

      se (numeros[x] > maior) {
        maior= numeros[x]
      }
    }

    escreva ("o maior número da lista é ",maior)
  }
}
