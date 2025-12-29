programa
{
  funcao inicio() {
    inteiro a[10], b[10], c[10], x

    para (x=0; x<=9; x++) {
      escreva ("Digite o ",(x+1),"° número do vetor A: ")
      leia (a[x])
      escreva ("Digite o ",(x+1),"° número do vetor B: ")
      leia (b[x])
    }

    para (x=0; x<=9; x++) {
      c[x] = a[x] - b[x]

      escreva ("C = ",c[x],"\n")
    }
  }
}
