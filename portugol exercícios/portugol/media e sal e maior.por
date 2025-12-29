programa {
  funcao inicio() {
  inteiro x
  real maior, soma
  cadeia nome
  
  soma = 0
  maior = 0

  para (x = 1; x <=3; a++) {
    escreva ("digite o ",x,"° nome: ")
    leia (nome)
    escreva ("digite o ",x,"° salário: ")
    leia (sal)
    soma = sal + soma
    se (sal > maior) {
      maior = sal
    }
  }
  escreva ("a soma de todos os salários é de R$",soma,"\n")
  escreva ("a média de todos os salários é de R$",(soma / 3),"\n")
  escreva ("o maior salário é de R$",maior)
  }
}
