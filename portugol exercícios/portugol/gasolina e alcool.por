programa {
  funcao inicio() {

  real litros, desconto, valorTotal
  caracter combustivel

  escreva ("quantos litros você colocou?\n")
  leia (litros)
  escreva ("que tipo de combustível você colocou? sendo A- álcool e G- gasolina?\n")
  leia (combustivel)

   se (combustivel == "A") {
    se (litros <= 20) {
    desconto= (litros * 3 / 100) * litros
    valorTotal= ((4.1 * litros) - desconto)
    escreva ("o valor a ser pago será de R$",valorTotal) 
     senao se (litros > 20) {
     desconto= (litros * 5 / 100) * litros
     valorTotal= ((4.1 * litros) - desconto)
     escreva ("o valor a ser pago será de R$",valorTotal) 
     }
    } 
   senao se (combustivel == "G")
    se (litros <= 20) {
    desconto= (litros * 4 / 100) * litros
    valorTotal= ((5.3 * litros) - desconto)
    escreva ("o valor a ser pago será de R$",valorTotal)   
     senao se (litros > 20) {
     desconto= (litros * 6 / 100) * litros
     valorTotal= ((5.3 * litros) - desconto)
     escreva ("o valor a ser pago será de R$",valorTotal)
     }
    }
   }
  }
}
