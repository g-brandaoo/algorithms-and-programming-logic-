algoritmo "sistema_cadastro"

var

// MATRIZ PARA NOME E EMAIL
dados: vetor[1..50,1..2] de caractere

// VETOR PARA IDADE
idades: vetor[1..50] de inteiro

totalUsuarios: inteiro
opcao: inteiro

// ---------------------------------------------------
// FUNÇÃO PARA BUSCAR USUÁRIO
// ---------------------------------------------------

funcao buscarUsuario(nomeBusca: caractere): inteiro

var
i: inteiro

inicio

   para i de 1 ate totalUsuarios faca

         se dados[i,1] = nomeBusca entao
                  retorne i
                        fimse

                           fimpara

                              retorne 0

                              fimfuncao

                              // ---------------------------------------------------
                              // PROCEDIMENTO CADASTRAR
                              // ---------------------------------------------------

                              procedimento cadastrarUsuario()

                              var
                              nome: caractere
                              email: caractere
                              idade: inteiro

                              inicio

                                 se totalUsuarios >= 50 entao
                                       escreval("Limite de usuarios atingido.")
                                          senao

                                                escreval("===== CADASTRO =====")

                                                      escreva("Nome: ")
                                                            leia(nome)

                                                                  escreva("Idade: ")
                                                                        leia(idade)

                                                                              escreva("Email: ")
                                                                                    leia(email)

                                                                                          totalUsuarios <- totalUsuarios + 1

                                                                                                dados[totalUsuarios,1] <- nome
                                                                                                      dados[totalUsuarios,2] <- email
                                                                                                            idades[totalUsuarios] <- idade

                                                                                                                  escreval("Usuario cadastrado com sucesso!")

                                                                                                                     fimse

                                                                                                                     fimprocedimento

                                                                                                                     // ---------------------------------------------------
                                                                                                                     // PROCEDIMENTO LISTAR
                                                                                                                     // ---------------------------------------------------

                                                                                                                     procedimento listarUsuarios()

                                                                                                                     var
                                                                                                                     i: inteiro

                                                                                                                     inicio

                                                                                                                        escreval("===== LISTA DE USUARIOS =====")

                                                                                                                           se totalUsuarios = 0 entao

                                                                                                                                 escreval("Nenhum usuario cadastrado.")

                                                                                                                                    senao

                                                                                                                                          para i de 1 ate totalUsuarios faca

                                                                                                                                                   escreval("----------------------------")
                                                                                                                                                            escreval("Usuario: ", i)
                                                                                                                                                                     escreval("Nome: ", dados[i,1])
                                                                                                                                                                              escreval("Idade: ", idades[i])
                                                                                                                                                                                       escreval("Email: ", dados[i,2])

                                                                                                                                                                                             fimpara

                                                                                                                                                                                                fimse

                                                                                                                                                                                                fimprocedimento

                                                                                                                                                                                                // ---------------------------------------------------
                                                                                                                                                                                                // PROCEDIMENTO BUSCAR
                                                                                                                                                                                                // ---------------------------------------------------

                                                                                                                                                                                                procedimento buscar()

                                                                                                                                                                                                var
                                                                                                                                                                                                nomeBusca: caractere
                                                                                                                                                                                                posicao: inteiro

                                                                                                                                                                                                inicio

                                                                                                                                                                                                   escreva("Digite o nome do usuario: ")
                                                                                                                                                                                                      leia(nomeBusca)

                                                                                                                                                                                                         posicao <- buscarUsuario(nomeBusca)

                                                                                                                                                                                                            se posicao <> 0 entao

                                                                                                                                                                                                                  escreval("Usuario encontrado!")
                                                                                                                                                                                                                        escreval("Nome: ", dados[posicao,1])
                                                                                                                                                                                                                              escreval("Idade: ", idades[posicao])
                                                                                                                                                                                                                                    escreval("Email: ", dados[posicao,2])

                                                                                                                                                                                                                                       senao

                                                                                                                                                                                                                                             escreval("Usuario nao encontrado.")

                                                                                                                                                                                                                                                fimse

                                                                                                                                                                                                                                                fimprocedimento

                                                                                                                                                                                                                                                // ---------------------------------------------------
                                                                                                                                                                                                                                                // PROCEDIMENTO EDITAR
                                                                                                                                                                                                                                                // ---------------------------------------------------

                                                                                                                                                                                                                                                procedimento editarUsuario()

                                                                                                                                                                                                                                                var
                                                                                                                                                                                                                                                nomeBusca: caractere
                                                                                                                                                                                                                                                posicao: inteiro

                                                                                                                                                                                                                                                inicio

                                                                                                                                                                                                                                                   escreva("Digite o nome do usuario para editar: ")
                                                                                                                                                                                                                                                      leia(nomeBusca)

                                                                                                                                                                                                                                                         posicao <- buscarUsuario(nomeBusca)

                                                                                                                                                                                                                                                            se posicao <> 0 entao

                                                                                                                                                                                                                                                                  escreval("Digite os novos dados")

                                                                                                                                                                                                                                                                        escreva("Novo nome: ")
                                                                                                                                                                                                                                                                              leia(dados[posicao,1])

                                                                                                                                                                                                                                                                                    escreva("Nova idade: ")
                                                                                                                                                                                                                                                                                          leia(idades[posicao])

                                                                                                                                                                                                                                                                                                escreva("Novo email: ")
                                                                                                                                                                                                                                                                                                      leia(dados[posicao,2])

                                                                                                                                                                                                                                                                                                            escreval("Usuario editado com sucesso!")

                                                                                                                                                                                                                                                                                                               senao

                                                                                                                                                                                                                                                                                                                     escreval("Usuario nao encontrado.")

                                                                                                                                                                                                                                                                                                                        fimse

                                                                                                                                                                                                                                                                                                                        fimprocedimento

                                                                                                                                                                                                                                                                                                                        // ---------------------------------------------------
                                                                                                                                                                                                                                                                                                                        // PROCEDIMENTO REMOVER
                                                                                                                                                                                                                                                                                                                        // ---------------------------------------------------

                                                                                                                                                                                                                                                                                                                        procedimento removerUsuario()

                                                                                                                                                                                                                                                                                                                        var
                                                                                                                                                                                                                                                                                                                        nomeBusca: caractere
                                                                                                                                                                                                                                                                                                                        posicao: inteiro
                                                                                                                                                                                                                                                                                                                        i: inteiro

                                                                                                                                                                                                                                                                                                                        inicio

                                                                                                                                                                                                                                                                                                                           escreva("Digite o nome do usuario para remover: ")
                                                                                                                                                                                                                                                                                                                              leia(nomeBusca)

                                                                                                                                                                                                                                                                                                                                 posicao <- buscarUsuario(nomeBusca)

                                                                                                                                                                                                                                                                                                                                    se posicao <> 0 entao

                                                                                                                                                                                                                                                                                                                                          para i de posicao ate totalUsuarios - 1 faca

                                                                                                                                                                                                                                                                                                                                                   dados[i,1] <- dados[i + 1,1]
                                                                                                                                                                                                                                                                                                                                                            dados[i,2] <- dados[i + 1,2]
                                                                                                                                                                                                                                                                                                                                                                     idades[i] <- idades[i + 1]

                                                                                                                                                                                                                                                                                                                                                                           fimpara

                                                                                                                                                                                                                                                                                                                                                                                 totalUsuarios <- totalUsuarios - 1

                                                                                                                                                                                                                                                                                                                                                                                       escreval("Usuario removido com sucesso!")

                                                                                                                                                                                                                                                                                                                                                                                          senao

                                                                                                                                                                                                                                                                                                                                                                                                escreval("Usuario nao encontrado.")

                                                                                                                                                                                                                                                                                                                                                                                                   fimse

                                                                                                                                                                                                                                                                                                                                                                                                   fimprocedimento

                                                                                                                                                                                                                                                                                                                                                                                                   // ---------------------------------------------------
                                                                                                                                                                                                                                                                                                                                                                                                   // PROGRAMA PRINCIPAL
                                                                                                                                                                                                                                                                                                                                                                                                   // ---------------------------------------------------

                                                                                                                                                                                                                                                                                                                                                                                                   inicio

                                                                                                                                                                                                                                                                                                                                                                                                      totalUsuarios <- 0

                                                                                                                                                                                                                                                                                                                                                                                                         enquanto opcao <> 6 faca

                                                                                                                                                                                                                                                                                                                                                                                                               escreval("==============================")
                                                                                                                                                                                                                                                                                                                                                                                                                     escreval(" SISTEMA DE CADASTRO ")
                                                                                                                                                                                                                                                                                                                                                                                                                           escreval("==============================")
                                                                                                                                                                                                                                                                                                                                                                                                                                 escreval("1 - Cadastrar usuario")
                                                                                                                                                                                                                                                                                                                                                                                                                                       escreval("2 - Listar usuarios")
                                                                                                                                                                                                                                                                                                                                                                                                                                             escreval("3 - Buscar usuario")
                                                                                                                                                                                                                                                                                                                                                                                                                                                   escreval("4 - Editar usuario")
                                                                                                                                                                                                                                                                                                                                                                                                                                                         escreval("5 - Remover usuario")
                                                                                                                                                                                                                                                                                                                                                                                                                                                               escreval("6 - Sair")
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     escreval("==============================")

                                                                                                                                                                                                                                                                                                                                                                                                                                                                           escreva("Escolha uma opcao: ")
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 leia(opcao)

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       escolha opcao

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                caso 1
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            cadastrarUsuario()

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     caso 2
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 listarUsuarios()

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          caso 3
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      buscar()

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               caso 4
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           editarUsuario()

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    caso 5
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                removerUsuario()

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         caso 6
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     escreval("Encerrando sistema...")

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              outrocaso
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          escreval("Opcao invalida.")

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                fimescolha

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   fimenquanto

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   fimalgoritmo