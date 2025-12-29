programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro bot
    cadeia jogada

    escreva ("PEDRA PAPEL TESOURA\n")
    escreva ("-------------\n") 
    escreva ("digite sua jogada: ")
    leia (jogada)

    bot = u.sorteia(1,3)

    se (jogada == "pedra") {
      se (bot == "1") {
        escreva ("SUA JOGADA: PEDRA\n")
        escreva ("BOT: PEDRA\n")
        escreva ("empate")
      }
    }
    se (jogada == "pedra") {
      se (bot == "2") {
        escreva ("SUA JOGADA: PEDRA\n")
        escreva ("BOT: PAPEL\n")
        escreva ("bot ganhou")
      }
    }
    se (jogada == "pedra") {
      se (bot == "3") {
        escreva ("SUA JOGADA: PEDRA\n")
        escreva ("BOT: TESOURA\n")
        escreva ("você ganhou")
      }
    }
    se (jogada == "papel") {
      se (bot == "1") {
        escreva ("SUA JOGADA: PAPEL\n")
        escreva ("BOT: PEDRA\n")
        escreva ("você ganhou")
      }
    }
    se (jogada == "papel") {
      se (bot == "2") {
        escreva ("SUA JOGADA: PAPEL\n")
        escreva ("BOT: PAPEL\n")
        escreva ("empate")
      }
    }
    se (jogada == "papel") {
      se (bot == "3") {
        escreva ("SUA JOGADA: PAPEL\n")
        escreva ("BOT: TESOURA\n")
        escreva ("bot ganhou")
      }
    }
    se (jogada == "tesoura") {
      se (bot == "1") {
        escreva ("SUA JOGADA: TESOURA\n")
        escreva ("BOT: PEDRA\n")
        escreva ("bot ganhou")
      }
    }
    se (jogada == "tesoura") {
      se (bot == "2") {
        escreva ("SUA JOGADA: TESOURA\n")
        escreva ("BOT: PAPEL\n")
        escreva ("você ganhou")
      }
    }
    se (jogada == "tesoura") {
      se (bot == "3") {
        escreva ("SUA JOGADA: TESOURA\n")
        escreva ("BOT: TESOURA\n")
        escreva ("empate")
      }
    }
  }
}
