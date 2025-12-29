programa {
  funcao inicio() {
    inteiro x, y, numeros[10]
    logico num_repetido

    enquanto (verdadeiro) { // atá mandar parar continuar o loop
      para (x=0; x<=9; x++) { // se colocar o para antes do 'digite um número' e inicializar o num_repetido fora dele não vai funcionar o loop até digitar um num diferente
        num_repetido = verdadeiro

        enquanto (num_repetido) {
          escreva ("Digite o ",(x+1), "° número: ")
          leia (numeros[x])

          num_repetido = falso // se tirar vai ficar p sempre no 1° numero

          para (y=0; y < x; y++) {
            se (numeros[x] == numeros[y]) { // "fórmula" para conferir se um número é igual a outro no vetor
              num_repetido = verdadeiro // se tirar vai repetir a mensagem no quanto valer y e pular pro prox numero
              escreva ("Número repetido. ")
            } 
          }
        }  
      }
      pare
    }
    escreva ("Último número: ",numeros[9])
  }
}
