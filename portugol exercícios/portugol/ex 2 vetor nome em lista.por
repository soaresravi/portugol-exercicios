programa {
  funcao inicio() {
    cadeia lista[10] = {"ravi", "ludmilla", "lou", "brunna", "rafael", "aninha", "nicholas", "maria", "iza", "beyonce"}, nome
    inteiro x, posicao=-1
    
    escreva("digite um nome: ")
    leia(nome)

    para (x = 0; x <= 9; x++) {
      se (lista[x] == nome) {
        posicao = x
      }
    }  

    se (posicao != -1) {
      escreva("o nome ",nome," foi encontrado na posição ",(posicao + 1))
    } senao {
      escreva("O nome ",nome," não foi encontrado")
    }
  }
}