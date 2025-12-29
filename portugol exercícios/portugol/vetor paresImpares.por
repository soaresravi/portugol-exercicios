programa {
  funcao inicio() {
    inteiro numeros[7], x, resto=0, pares=0, impares=0

    para (x=0; x<=6; x++) {
      escreva ("digite o ",(x+1),"° número: ")
      leia (numeros[x])

      resto= numeros[x] % 2

      se (resto == 0) {
        pares++
      } senao {
        impares++
      }
    }

    escreva ("existem ",pares," números pares e ",impares," ímpares")
  }
}
