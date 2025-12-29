programa {
  funcao inicio() {
  real maca, morango, preco_mor, preco_maca, qtd_total, preco_desc

  escreva ("digite quantos KG de morango você comprou: ")
  leia (morango)
  escreva ("digite quantos KG de maçã você comprou: ")
  leia (maca)
  
   se (morango <= 5) {
    preco_mor= morango * 2.5
   } senao {
    preco_mor= morango * 2.2
   }
   se (maca <= 5) {
    preco_maca= maca * 1.8
   } senao {
    preco_maca= maca * 1.5
   }
   qtd_total= preco_mor + preco_maca
    se (maca + morango > 8) {
      preco_desc= (qtd_total - (qtd_total * 10 /100))
      escreva ("o preço total a ser pago será de R$",preco_desc)
    } senao {
      escreva ("o preço total a ser pago será de R$",qtd_total)
      }
  }
}
