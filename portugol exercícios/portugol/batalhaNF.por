programa {
  cadeia nav[10][10]
  cadeia com[10][10]
  cadeia barco
  cadeia n
  inteiro a, b, c, po, d
  inteiro vet, hor
  inteiro f

  inclua biblioteca Util --> st

  funcao inicio() {
    para(a = 0; a<=9; a++){
      para(b = 0; b<=9; b++){
        nav[a][b] = "_"
        com[a][b] = "_"
      }
    }
    barco = "Submarino"
    n = "S"
    a = 4
    c = 2
    po = 9
    criar()
    barco = "Fragatas"
    n = "F"
    a = 3
    c = 3
    po = 8
    criar()
    barco = "Destroier"
    n = "D"
    a = 2
    c = 4
    po = 7
    criar()
    barco = "Porta-Avião"
    n = "P"
    a = 1
    c = 5
    po = 6
    criar()

    barco = "Submarino"
    n = "S"
    a = 4
    c = 2
    po = 9
    comptt()
    barco = "Fragatas"
    n = "F"
    a = 3
    c = 3
    po = 8
    comptt()
    barco = "Destroier"
    n = "D"
    a = 2
    c = 4
    po = 7
    comptt()
    barco = "Porta-Avião"
    n = "P"
    a = 1
    c = 5
    po = 6
    comptt()
  }

  funcao criar() {
    para(b = 1;b<=a;b++){
      f = 1
      enquanto(f == 1)
      {
       escreva(" Adicione a localização do ",b,"º ",barco)
       escreva("\n                                      Posição VERTICAL (1-",a*2 + c,"): ")
       leia(vet)
       vet--
       escreva("                                      Posição HORIZONTAL (1-",a*2 + c,"): ")
       leia(hor)
       hor--

       se(nav[vet][hor] == "_"){
          se(hor == 0){
           se(nav[vet][hor+1] == "_"){
           para(d = 0;d <= (c-2);d++){
             nav[vet][hor+d] = n
           }
           f = 0
         }senao{
           escreva(" Sua posição está muito próxima á outra.\n")
         }

         }senao se(hor == po){
           se(nav[vet][hor-1] == "_" ){
           para(d = 0;d <= (c-2);d++){
             nav[vet][hor+d] = n
           }
           escreva("\n")
          f = 0
         }senao{
           escreva(" Sua posição está muito próxima á outra.\n")
         }

         }senao se(nav[vet][hor-1] == "_" e nav[vet][hor+1] == "_"){
           para(d = 0;d <= (c-2);d++){
             nav[vet][hor+d] = n
           }
           f = 0
         }senao{
           escreva(" Sua posição está muito próxima á outra.\n")
         }
       }senao{
         escreva(" A posição inserida já está preenchida.\n")
       }
      }

      }
    }
  }

  funcao comptt() {
    para(b = 1;b<=a;b++){
      f = 1
      enquanto(f == 1)
      {
       vet = st.sorteia(0,a*2+c-1)
       hor = st.sorteia(0,a*2+c-1)

       se(nav[vet][hor] == "_"){
          se(hor == 0){
           se(nav[vet][hor+1] == "_"){
           para(d = 0;d <= (c-2);d++){
             nav[vet][hor+d] = n
           }
           f = 0
         }
         }senao se(hor == po){
           se(nav[vet][hor-1] == "_" ){
           para(d = 0;d <= (c-2);d++){
             nav[vet][hor+d] = n
           }
          f = 0
         }
         }senao se(nav[vet][hor-1] == "_" e nav[vet][hor+1] == "_"){
           para(d = 0;d <= (c-2);d++){
             nav[vet][hor+d] = n
           }
           f = 0
         }
       }
      }

      }
    }
  }
}
