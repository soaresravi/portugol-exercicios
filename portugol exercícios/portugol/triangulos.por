programa {
  funcao inicio() {
    real lado1, lado2, lado3
    escreva ("digite o 1° lado do triângulo: ")
    leia (lado1)
    escreva ("digite o 2° lado do triângulo: ")
    leia (lado2)
    escreva ("digite o 3° lado do triângulo: ")
    leia (lado3)
    se (lado1 == lado2) {
     se (lado2 == lado3)
     escreva ("o triângulo é equilátero\n")
    }
      se (lado1 == lado2) {
       se (lado2 != lado3)
       escreva ("o triângulo é isósceles\n")
      }
        se (lado1 == lado3) {
         se (lado3 != lado2)
         escreva ("o triângulo é isósceles\n") 
        }
          se (lado2 == lado3) {
           se (lado3 != lado1)
           escreva ("o triângulo é isósceles\n")
          }
            se (lado1 != lado2) {
              se (lado2 != lado3)
               se (lado3 != lado1)
               escreva ("o triângulo é escaleno\n")
            }
  }
}
