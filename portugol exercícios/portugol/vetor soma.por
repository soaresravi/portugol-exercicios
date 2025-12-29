programa {
  funcao inicio() {
    inteiro soma=0, x, numeros[5]

    para (x=0; x<=4; x++) {
      escreva("digite o ",(x+1),"° número: ")
      leia(numeros[x])

      soma= soma+numeros[x]
    }

    escreva ("a soma de todos os números é ",soma)
  }
}
