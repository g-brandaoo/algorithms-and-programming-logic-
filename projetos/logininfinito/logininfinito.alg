algoritmo "LoginInfinito"
var
   usuario, senha: caractere

   inicio
      escreval("=== Sistema de Login Infinito ===")

         enquanto verdadeiro faca
               escreva("Digite o usuário: ")
                     leia(usuario)

                           escreva("Digite a senha: ")
                                 leia(senha)

                                       se (usuario = "admin") e (senha = "1234") entao
                                                escreval("Login realizado com sucesso!")
                                                      senao
                                                               escreval("Usuário ou senha incorretos, tente novamente.")
                                                                     fimse

                                                                           escreval(" ")
                                                                              fimenquanto

                                                                              fimalgoritmo
