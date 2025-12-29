programa {
   inclua biblioteca Util --> a
   inclua biblioteca Texto --> tx
  funcao inicio() {
    cadeia banco[8] = {"banco","cadeira","uva","amigo","careca","cadeirante","retangulo","signo"}
    cadeia palavra
    inteiro corre, crt, erro, flh, sort,
    inteiro tam
    inteiro c,k,
    inteiro s
    cadeia letra
    cadeia letras[12]
    cadeia certo[12]
    cadeia n
   erro = 6
   crt = 0
   k = 0
    sort = a.sorteia(0,7)


    palavra = banco[sort]


    tam = tx.numero_caracteres(palavra)
    corre = tam


   para(c = 0;c<tam;c++){
    letra = tx.extrair_subtexto(palavra,c,c+1)
    letras[c] = letra
    certo[c] = " "
    }


    enquanto(corre > 0){
     escreva("A letra sorteada tem ",corre," letras, tente adivinhar uma letra!\n")
     escreva(certo[k])
     para(k = 0;k<=tam;k++){
     se(certo[k] != " "){
        escreva(certo[k]," ")
       
      }senao{
        escreva("_ ")
      }
     }
      escreva("\n")
      leia(n)
      crt = 0
      para(k = 0; k<=tam; k++){
       se(certo[k] == n){
       escreva("\nA letra já tinha sido inserida antes...\n")
       }senao{
        se(letras[k] == n){
         corre--
         crt++
         certo[k] = n
       
        }
       }
      }

 
      se(crt == 1){
      escreva("Você acertou ",crt," palavra(s)\n")
       crt = 0
      } senao se(crt == 0){
       erro--
      se(erro == 0){
       corre = 0
      }
      senao{
       escreva("Não acertou NENHUMA, tem mais ",erro," chances\n")
      }
    }
    }
  se(erro == 0){
   escreva("Suas tentativas ACABARAM, a palavra era '",palavra,"'")
  }senao{
   escreva("Parabens, você acertou a palavra!")
  }
   




   
  }
}