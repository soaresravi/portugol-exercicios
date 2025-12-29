programa {
  funcao inicio() {
   real sal_por_hora, horasTrab, horaextra, salTotal
   escreva ("digite o valor que você ganha por hora: ")
   leia (sal_por_hora) 
   escreva ("digite o número de horas trabalhadas: ")
   leia (horasTrab)
   horaextra= horasTrab - 160
   salTotal= (horaextra * 15) + (160 * sal_por_hora) 
   escreva ("seu salário total é de R$",salTotal)
  }
}
