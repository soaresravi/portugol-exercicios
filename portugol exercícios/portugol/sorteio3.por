programa {
  inclua biblioteca Util --> u
  funcao inicio() {
  inteiro x, num, maior, menor

  maior = 0
  menor = 0

  para (x=1; x<=3; x++) {
    num= u.sorteia(1,100)
    escreva ("o ",x,"° número sorteado é ",num,"\n")
    se (num > maior) {
      maior = num
    } se (menor == 0) {
      menor = num 
    } senao se (num < menor) {
      menor = num
    }
  }
  escreva ("o maior número é ",maior," e o menor número é ",menor)  
  }
}
