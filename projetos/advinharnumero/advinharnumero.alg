algoritmo "JogoAdivinhacao"
var
   numeroSecreto, palpite: inteiro

   inicio
      numeroSecreto <- 7

         escreval("=== Jogo de Adivinhação ===")
            escreva("Digite seu palpite: ")
               leia(palpite)

                  se palpite = numeroSecreto entao
                        escreval("Você acertou!")
                           senao
                                 escreval("Você errou, tente novamente!")
                                    fimse
                                    fimalgoritmo
