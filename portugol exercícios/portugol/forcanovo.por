programa {
  inclua biblioteca Util --> u
  inclua biblioteca Texto --> tx

  funcao inicio() {
    cadeia forca[5] = {"memorie", "axiom", "subway", "progress", "vodka"}
    cadeia palavra, letra, palpite, letras[9], certo[9]
    inteiro sorteio, tamanho, x, y, acertos=0, erros=0, tantas

    escreva ("|---\n|\n|\n|\n|\n")
    
    sorteio= u.sorteia(0, 4)
    palavra= forca[sorteio]

    tamanho= tx.numero_caracteres(palavra)
    tantas= tamanho
    
    para (x=0; x<tamanho; x++) {
      letra= tx.extrair_subtexto(palavra, x, x+1)
      letras[x] = letra
      certo[x] = "*"
    }

    enquanto (tamanho > acertos) {
      escreva("The word: ")

      para (y=0; y<=tamanho; y++) {
        escreva (certo[y])
      }

      escreva ("\nType the letter: ")
      leia (palpite)
      escreva ("\n")
      

      inteiro acertou=0

      para (y=0; y<=tamanho; y++) {
        se (certo[y] == "*" e palpite == letras[y]) {
          acertos++
          acertou=1
          tantas--
          certo[y] = palpite
        } 
      }

      se (palpite == palavra) {
        escreva ("Congrats!! You got the right word: ",palavra)
        pare
      } 

      se (acertou == 0) {
        erros++
        se (erros == 1) {
          escreva ("|---O\n|\n|\n|\n|\n")
        } senao se (erros == 2) {
          escreva ("|---O\n|   |\n|\n|\n|\n")
        } senao se (erros == 3) {
          escreva ("|---O\n|   |\n|   |\n|\n|\n")
        } senao se (erros == 4) {
          escreva ("|---O\n|  (|\n|   |\n|\n|\n")
        } senao se (erros == 5) {
          escreva ("|---O\n|  (|)\n|   |\n|\n|\n")
        } senao se (erros == 6) {
          escreva ("|---O\n|  (|)\n|   |\n|  (\n|\n")
        } senao {
          escreva ("|---O\n|  (|)\n|   |\n|  ( )\n|\n")
        }
      escreva ("\nThe letter '",palpite,"' is wrong :( ",tantas," letters left.\n")
      } senao {
        escreva ("The letter '",palpite,"' is correct! ",tantas," letters left.\n")
      }

      se (erros == 7) {
      escreva ("Your attempts are over :( The word was: ",palavra)
      pare
      }
    }
    se (tantas == 0) {
      escreva ("Congrats!! You got the right word: ",palavra)
    }
  }
}

