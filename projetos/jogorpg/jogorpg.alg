algoritmo "JogoRPGMercadoSimples"
var
   vidaHeroi, vidaMonstro, pontos: inteiro

   inicio
      escreval("=== Jogo RPG com Mercado Simples ===")

         vidaHeroi <- 20
            vidaMonstro <- 15
               pontos <- 120   // pontos iniciais para testar o mercado

                  enquanto (vidaHeroi > 0) e (vidaMonstro > 0) faca
                        escreval("O herói ataca o monstro!")
                              vidaMonstro <- vidaMonstro - 5
                                    escreval("Vida do monstro: ", vidaMonstro)

                                          se vidaMonstro <= 0 entao
                                                   escreval("O herói venceu!")
                                                            pontos <- pontos + 200
                                                                     escreval("Você ganhou 200 pontos! Total: ", pontos)
                                                                           senao
                                                                                    escreval("O monstro contra-ataca!")
                                                                                             vidaHeroi <- vidaHeroi - 4
                                                                                                      escreval("Vida do herói: ", vidaHeroi)

                                                                                                               se vidaHeroi <= 0 entao
                                                                                                                           escreval("O monstro venceu!")
                                                                                                                                    fimse
                                                                                                                                          fimse

                                                                                                                                                // Sistema de mercado simples
                                                                                                                                                      se pontos >= 120 entao
                                                                                                                                                               escreval("Você tem ", pontos, " pontos.")
                                                                                                                                                                        escreval("Você comprou uma espada por 120 pontos!")
                                                                                                                                                                                 pontos <- pontos - 120
                                                                                                                                                                                          escreval("Agora seus ataques causam mais dano!")
                                                                                                                                                                                                   vidaMonstro <- vidaMonstro - 10
                                                                                                                                                                                                            escreval("Ataque extra da espada! Vida do monstro: ", vidaMonstro)
                                                                                                                                                                                                                  fimse

                                                                                                                                                                                                                        escreval(" ")
                                                                                                                                                                                                                           fimenquanto

                                                                                                                                                                                                                              escreval("Fim da batalha!")
                                                                                                                                                                                                                              fimalgoritmo
