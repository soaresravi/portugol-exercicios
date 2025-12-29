programa {
  funcao inicio() {
  cadeia nome
  inteiro x, soma, menor, maior
  real sal

  soma= 0
  maior= 0
  menor= 100000000000000

  para (x=1; x <= 5; x++) {
    escreva ("digite o ",x,"° nome: ")
    leia (nome)
    escreva ("digite o ",x,"° salário: ")
    leia (sal)
    se (maior < sal) {
    maior = sal
    }
    se (menor > sal) {
    menor = sal  
    }
    soma = soma + sal
  }
  escreva ("a soma de todos os salários é de R$",soma,"\n")
  escreva ("a média salárial é de R$",(soma / 5),"\n")
  escreva ("o maior salário é de R$",maior,"\n")
  escreva ("o menor salário é de R$",menor)
  }
}
