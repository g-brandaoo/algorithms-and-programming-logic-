algoritmo "AprovacaoEscolar"
var
   nome: caractere
      nota1, nota2, nota3, media: real
         frequencia: inteiro

         inicio
            escreval("=== Sistema de Aprovação Escolar ===")
               escreva("Digite o nome do aluno: ")
                  leia(nome)

                     escreva("Digite a primeira nota: ")
                        leia(nota1)

                           escreva("Digite a segunda nota: ")
                              leia(nota2)

                                 escreva("Digite a terceira nota: ")
                                    leia(nota3)

                                       escreva("Digite a frequência (%): ")
                                          leia(frequencia)

                                             media <- (nota1 + nota2 + nota3) / 3

                                                escreval("Aluno: ", nome)
                                                   escreval("Média final: ", media:4:2)
                                                      escreval("Frequência: ", frequencia, "%")

                                                         se (media >= 7) e (frequencia >= 75) entao
                                                               escreval("Resultado: APROVADO")
                                                                  senao
                                                                        escreval("Resultado: REPROVADO")
                                                                           fimse
                                                                           fimalgoritmo
