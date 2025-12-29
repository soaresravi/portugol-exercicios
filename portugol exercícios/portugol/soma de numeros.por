programa {
  funcao inicio() {
    inteiro num, x, soma=0

    para (x=1; x<=6; x++) {
      escreva ("digite o ",x,"° número: ")
      leia (num)
      soma= soma + num
    }
    escreva ("a soma de todos os números é ",soma)
  }
}
