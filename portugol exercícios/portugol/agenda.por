programa {
  cadeia nomes[100], nome
  inteiro x=0, opcao, telefone, telefones[100], y, resposta, z, i

  funcao inicio() {
    faca {
      escreva ("AGENDA\n")
      escreva ("1. Consultar.\n")
      escreva ("2. Cadastrar.\n")
      escreva ("3. Sair.\n")

      escreva ("Digite a opção: ")
      leia (opcao)

      se (opcao == 1) {
        faca {
          escreva ("Digite o nome para consulta: ")
          leia(nome)
          para (y=0; y<x; y++) {
            se (nome == nomes[y]) {
              escreva ("Nome encontrado com sucesso!\n\n")
              escreva ("Nome            Telefone\n-------------------------\n",nomes[y],"            ",telefones[y])
              escreva ("\n")
            } senao {
              escreva ("O nome digitado não foi encontrado, digite 1 para tentar novamente 2 para sair: ")
              leia (resposta)
            }  
          } 
        } enquanto (resposta == 1)
        escreva ("\n\n")
      } senao se (opcao == 2) {
        escreva ("Digite o nome para ser adicionado: ")
        leia(nome)
        escreva ("Digite o telefone para ser adicionado: ")
        leia (telefone)
        se (nome != "fim") {
          nomes[x]= nome
          telefones[x]= telefone
          escreva ("Nome e telefone adicionado com sucesso!\n\n")
          x++
        } senao se (nome == "fim") {
          escreva ("\nLista de nomes atualizada:                 Lista inversa: \n")
          para (z=0; z<x; z++) {
            escreva((z+1),". ",nomes[z],"                                     ",(z+1),". ",nomes[x-z-1],"\n")
          }
        }
        escreva ("\n")
      } senao se (opcao == 3) {
        escreva ("Encerrando programa...")
        pare
      } senao {
        escreva ("Opção inválida\n\n")
      }
    } enquanto (verdadeiro)  
  }
}