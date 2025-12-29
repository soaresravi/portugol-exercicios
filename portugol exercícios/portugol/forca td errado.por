programa {
  inclua biblioteca Util --> u
  inclua biblioteca Texto --> tx

  funcao inicio() {
    cadeia palavra[10] = {"ravi", "globalizaçao", "capitalismo", "revoluçao", "carambola", "violeta", "calvice", "norberto", "algebra", "barata"}
    cadeia letra, palavra2, palpite
    inteiro sorteio, erro, acerto, x, tamanho, y

    erro = 0
    acerto = 0
    y = acerto

    sorteio = u.sorteia(0, 9)
    palavra2 = palavra[sorteio]
    tamanho = tx.numero_caracteres(palavra2)
    escreva(palavra2, "\n")
    escreva("FORCA\n")
    escreva("-----------\n")
    escreva("A palavra possui ", tamanho, " letras\n")

    enquanto (y < tamanho) {
      x = 0

      enquanto (x < tamanho) {
        letra = tx.extrair_subtexto(palavra2, x, x + 1)
        escreva("Digite uma letra como palpite: ")
        leia(palpite)

        se (palpite == letra) {
          acerto = acerto + 1
          escreva("Você possui ", acerto, " acerto(s)\n")
        } senao {
          erro = erro + 1
        }
        x = x + 1
      }

      se (acerto == tamanho) {
        escreva("Você acertou todas as letras! Digite a palavra completa: ")
        leia(palpite)
        
        se (palpite == palavra2) {
          escreva("Você acertou a palavra.")
          pare
        }
      }

      y = y + 1

      se (erro >= 6) {
        escreva("Suas tentativas acabaram. A palavra era ", palavra2)
        pare
      }
    }
  }
}