programa {
  funcao inicio() {

  cadeia time1, time2
  inteiro gols1, gols2

  escreva ("digite o nome do primeiro time: ")
  leia (time1)
  escreva ("digite o nome do segundo time: ")
  leia (time2)
  escreva ("quantos gols ",time1, " fez?: ")
  leia (gols1)
  escreva ("quantos gols ",time2, " fez?: ")
  leia (gols2)

   se (gols1 > gols2)
   escreva (time1," venceu")
    senao se (gols2 > gols1) {
    escreva (time2," venceu")
   }
     senao {
     escreva ("empate")
     }
  }
}
