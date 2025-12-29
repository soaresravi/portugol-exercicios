programa {
  funcao inicio() {
    cadeia nomes[10]
    inteiro salarios[10], inss[10], ir[10], sal_liq[10]
    inteiro x

    para (x=0; x<=9; x++) {
      escreva ("Digite o ",(x+1),"° nome: ")
      leia (nomes[x])
      escreva ("Digite o ",(x+1), "° salário: ")
      leia (salarios[x])

      se (salarios[x] <= 1320) {
        inss[x] = salarios[x] * 7.5 / 100
      } senao se ((salarios[x] >= 1320.01) e (salarios[x] <= 2571.29)) {
        inss[x] = salarios[x] * 9 / 100
      } senao se ((salarios[x] >= 2570.30) e (salarios[x] <= 3856.94)) {
        inss[x] = salarios[x] * 12 / 100
      } senao se ((salarios[x] >= 3856.95) e (salarios[x] <= 7507.49)) {
        inss[x] = salarios[x] * 14 / 100
      } senao {
        escreva ("Salário inválido\n")
      }
      se (salarios[x] <= 2112) {
        ir[x] = 0
      } senao se ((salarios[x] >= 2112.01) e (salarios[x] <= 2826.65)) {
        ir[x] = salarios[x] * 7.5 / 100
      } senao se ((salarios[x] >= 2826.66) e (salarios[x] <= 3751.06)) {
        ir[x] = salarios[x] * 15 / 100
      } senao se ((salarios[x] >= 3751.07) e (salarios[x] <= 4664.68)) {
        ir[x] = salarios[x] * 22.5 / 100
      } senao se (salarios[x] >= 4664.69) {
        ir[x] = salarios[x] * 27.5 / 100
      } senao {
        escreva ("Salário inválido\n")
      }

      sal_liq[x]
      = salarios[x] - inss[x] - ir[x]

      escreva ("NOME: ", nomes[x],"\n")
      escreva ("SALÁRIO: ", salarios[x],"\n")
      escreva ("INSS: ", inss[x],"\n")
      escreva ("IMPOSTO DE RENDA: ", ir[x],"\n")
      escreva ("SALÁRIO LÍQUIDO: ", sal_liq[x],"\n\n")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1607; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */