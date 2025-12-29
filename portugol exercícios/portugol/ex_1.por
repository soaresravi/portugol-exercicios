programa
{
  funcao inicio() {
    inteiro numeros[10], numero=0, x, y

    para (x=0; x<=9; x++) {
      escreva ("Digite o ",(x+1), "° número: ")
      leia (numero)	
      numeros[x] = numero // se nao for assim nao tem como comparar, ele guarda a variavel
    }

    para (x=0; x<=9; x++) {
      para (y=0; y < x; y++) { // serve para que compare somente com os numeros antes dele na sequencia
        se (numeros[x] == numeros[y]) { 
          escreva ("O número ",numeros[x], " está repetido. Nas posiçõees ",(x+1)," e ",(y+1),"\n")
        }
      }
    }    
  }
}