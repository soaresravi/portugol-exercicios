programa {
  funcao inicio() {
    inteiro x, homens, mulheres, nb, soma, soma2, vinte, idade
    cadeia sexo
    
    homens= 0
    mulheres= 0
    nb= 0
    soma=0
    soma2= 0
    vinte= 0

    para (x=1; x <= 5; x++) {
      escreva ("digite a ",x,"° idade: ")
      leia (idade)
      escreva ("digite o ",x,"° sexo: ")
      leia (sexo)

      se (sexo == "masculino") {
        homens= homens + 1
        soma2= soma2 + idade
      } senao se (sexo == "feminino") {
        mulheres= mulheres + 1
        se (idade > 20) {
          vinte= vinte + 1
        }
      } senao {
        nb= nb + 1
      }
      soma= soma + idade

    }
    escreva ("teve ",homens," homens no grupo\n")
    escreva ("teve ",mulheres," mulheres no grupo\n")
    escreva ("teve ",nb," não binários no grupo\n")
    escreva ("a média das idades é de ",(soma / 5)," anos\n")
    escreva ("a média de idade dos homens é de ",(soma2 / 5)," anos\n")
    escreva (vinte," mulheres tem mais de 20 anos no grupo")
  }
}
