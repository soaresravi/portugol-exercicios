programa {
  funcao inicio() {
    real notas[8], media=0
    inteiro x

    para (x=0; x<=7; x++) {
      escreva ("digite a ",(x+1),"° nota: ")
      leia(notas[x])

      media= media + notas[x]
    }

    escreva ("a média das notas é ",(media/8))
  }
}
