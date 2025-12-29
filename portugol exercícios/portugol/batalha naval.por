programa
{
    cadeia jogo[10][10]
    inteiro l, c, pecas=0,sub=0,fraga=0,destro=0,porta=0,a=0,b=0,d=0,p=0
  
	funcao inicio()
	{
    iniciatabuleiro()
    mostratabuleiro()

      enquanto(a<=3){
       // esse aqui é o submarino
        escreva("submarino \n")
        escreva("digite a linha desejada:")
        leia(l)
        escreva("digite a coluna desejada:")
        leia(c)
        l--
        c--
        escreva(c)
        se (c == 0) {
          se ((jogo[l][c] == "~") e (jogo[l][c+1] == "~"))
              jogo[l][c]="S"
        }
        senao se ((c == 9)){

         jogo[l][c]="S"
      }
        senao se ((jogo[l][c+1] == "~") e (jogo[l][c-1] == "~")){
        jogo[l][c]="S"
      }
      
        a++
        mostratabuleiro()
      }


        enquanto(b<=2){
         // esse aqui é o fragata
         escreva("fragata \n")
         escreva("digite a linha desejada:")
         leia(l)
         escreva("digite a coluna desejada:")
         leia(c)
         l--
         c-- 
         se ((c == 0)) {
          se ((jogo[l][c] == "~") e (jogo[l][c+1] == "~") e (jogo[l][c+2] == "~")){
            jogo[l][c+1]="F"
            jogo[l][c]="F"
         }
        }
        senao se ((c == 9)){
        jogo[l][c+1]="F"
         jogo[l][c]="F"
      }
        senao se ((jogo[l][c+1] == "~") e (jogo[l][c-1] == "~")){
        jogo[l][c+1]="F"
        jogo[l][c]="F"
      }
           b++
           mostratabuleiro()
        } 
         enquanto(d<=1){
         // esse aqui é o destroier
         escreva("destroier \n")
         escreva("digite a linha desejada:")
         leia(l)
         escreva("digite a coluna desejada:")
         leia(c)
         l--
         c--
         se ((c == 0)) {
          se ((jogo[l][c] == "~") e (jogo[l][c+1] == "~") e (jogo[l][c+2] == "~")){
            jogo[l][c+1]="D"
            jogo[l][c]="D"
            jogo[l][c+2]="D"
         }
        }
        senao se ((c == 9)){
        jogo[l][c+1]="D"
         jogo[l][c]="D"
         jogo[l][c+2]="D"
      }
        senao se ((jogo[l][c+1] == "~") e (jogo[l][c-1] == "~")){
        jogo[l][c+1]="D"
        jogo[l][c]="D"
        jogo[l][c+2]="D"
      }
           d++
           mostratabuleiro()
        } 
        enquanto(p==0){
          //esse e o porta avioes
          escreva("porta aviões \n")
         escreva("digite a linha desejada:")
         leia(l)
         escreva("digite a coluna desejada:")
         leia(c)
         l--
         c--
         se ((c == 0)) {
          se ((jogo[l][c] == "~") e (jogo[l][c+1] == "~") e (jogo[l][c+2] == "~")){
            jogo[l][c+1]="P"
            jogo[l][c]="P"
            jogo[l][c+2]="P"
            jogo[l][c+3]="P"
         }
        }
        senao se ((c == 9)){
         jogo[l][c+1]="P"
         jogo[l][c]="P"
         jogo[l][c+2]="P"
         jogo[l][c+3]="P"
      }
        senao se ((jogo[l][c+1] == "~") e (jogo[l][c-1] == "~")){
        jogo[l][c+1]="P"
        jogo[l][c]="P"
        jogo[l][c+2]="P"
        jogo[l][c+3]="P"
      }
           p++
           mostratabuleiro()
        }
            
      
    
      
  
	
     funcao mostratabuleiro(){
      limpa()
      para (l=0;l<=9;l++){
      	para (c=0;c<=9;c++){
      		escreva(jogo[l][c],"|")
      	}
      	escreva("\n")
      }
    }
       funcao iniciatabuleiro(){
       	para(l=0;l<=9;l++){
       	 para(c=0;c<=9;c++){
       	 	jogo[l][c]="~"	
       	  }
       	}
      }  





     

}
