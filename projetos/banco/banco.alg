algoritmo "SistemaBancario"
var
   nome: caractere
      saldo, valor: real
         opcao: inteiro

         inicio
            escreval("=== Sistema Bancário Simples ===")
               escreva("Digite o nome do cliente: ")
                  leia(nome)

                     escreva("Digite o saldo inicial: R$ ")
                        leia(saldo)

                           repita
                                 escreval(" ")
                                       escreval("Menu de Operações")
                                             escreval("1 - Depositar")
                                                   escreval("2 - Sacar")
                                                         escreval("3 - Consultar Saldo")
                                                               escreval("0 - Sair")
                                                                     escreva("Escolha uma opção: ")
                                                                           leia(opcao)

                                                                                 escolha opcao
                                                                                          caso 1
                                                                                                      escreva("Digite o valor do depósito: R$ ")
                                                                                                                  leia(valor)
                                                                                                                              saldo <- saldo + valor
                                                                                                                                          escreval("Depósito realizado com sucesso!")
                                                                                                                                                   caso 2
                                                                                                                                                               escreva("Digite o valor do saque: R$ ")
                                                                                                                                                                           leia(valor)
                                                                                                                                                                                       se valor <= saldo entao
                                                                                                                                                                                                      saldo <- saldo - valor
                                                                                                                                                                                                                     escreval("Saque realizado com sucesso!")
                                                                                                                                                                                                                                 senao
                                                                                                                                                                                                                                                escreval("Saldo insuficiente!")
                                                                                                                                                                                                                                                            fimse
                                                                                                                                                                                                                                                                     caso 3
                                                                                                                                                                                                                                                                                 escreval("Cliente: ", nome)
                                                                                                                                                                                                                                                                                             escreval("Saldo atual: R$ ", saldo:4:2)
                                                                                                                                                                                                                                                                                                      caso 0
                                                                                                                                                                                                                                                                                                                  escreval("Encerrando o sistema...")
                                                                                                                                                                                                                                                                                                                           outrocaso
                                                                                                                                                                                                                                                                                                                                       escreval("Opção inválida!")
                                                                                                                                                                                                                                                                                                                                             fimescolha
                                                                                                                                                                                                                                                                                                                                                ate opcao = 0

                                                                                                                                                                                                                                                                                                                                                fimalgoritmo
