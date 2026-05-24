algoritmo "Sistema_Verificador_Acesso"

var

   nomes : vetor[1..50] de caractere
   logins : vetor[1..50] de caractere
   senhas : vetor[1..50] de caractere

   dados : matriz[1..50,1..2] de inteiro
   // coluna 1 = nivel acesso
   // coluna 2 = tentativas

   totalUsuarios : inteiro
   opcao : inteiro

// --------------------------------------------------

funcao buscarUsuario(loginBusca : caractere) : inteiro

var
   i : inteiro

inicio

   para i de 1 ate totalUsuarios faca

      se logins[i] = loginBusca entao
         retorne i
      fimse

   fimpara

   retorne 0

fimfuncao

// --------------------------------------------------

procedimento cadastrarUsuario()

var
   nivel : inteiro

inicio

   se totalUsuarios >= 50 entao
      escreval("Limite de usuarios atingido.")
   senao

      totalUsuarios <- totalUsuarios + 1

      escreval("")
      escreval("===== CADASTRO =====")

      escreva("Nome: ")
      leia(nomes[totalUsuarios])

      escreva("Login: ")
      leia(logins[totalUsuarios])

      escreva("Senha: ")
      leia(senhas[totalUsuarios])

      escreva("Nivel de acesso (1-Usuario / 2-Admin): ")
      leia(nivel)

      dados[totalUsuarios,1] <- nivel
      dados[totalUsuarios,2] <- 0

      escreval("")
      escreval("Usuario cadastrado com sucesso.")

   fimse

fimprocedimento

// --------------------------------------------------

procedimento listarUsuarios()

var
   i : inteiro

inicio

   escreval("")
   escreval("===== LISTA DE USUARIOS =====")

   se totalUsuarios = 0 entao

      escreval("Nenhum usuario cadastrado.")

   senao

      para i de 1 ate totalUsuarios faca

         escreval("")
         escreval("Usuario ", i)
         escreval("Nome: ", nomes[i])
         escreval("Login: ", logins[i])

         se dados[i,1] = 1 entao
            escreval("Nivel: Usuario")
         senao
            escreval("Nivel: Administrador")
         fimse

      fimpara

   fimse

fimprocedimento

// --------------------------------------------------

procedimento realizarLogin()

var

   loginDigitado : caractere
   senhaDigitada : caractere

   posicao : inteiro

inicio

   escreval("")
   escreval("===== LOGIN =====")

   escreva("Login: ")
   leia(loginDigitado)

   posicao <- buscarUsuario(loginDigitado)

   se posicao = 0 entao

      escreval("Usuario nao encontrado.")

   senao

      se dados[posicao,2] >= 3 entao

         escreval("ACESSO BLOQUEADO.")
         escreval("Muitas tentativas invalidas.")

      senao

         escreva("Senha: ")
         leia(senhaDigitada)

         se senhaDigitada = senhas[posicao] entao

            escreval("")
            escreval("ACESSO PERMITIDO")
            escreval("Bem-vindo ", nomes[posicao])

            se dados[posicao,1] = 1 entao
               escreval("Nivel de acesso: Usuario")
            senao
               escreval("Nivel de acesso: Administrador")
            fimse

            dados[posicao,2] <- 0

         senao

            dados[posicao,2] <- dados[posicao,2] + 1

            escreval("")
            escreval("ACESSO NEGADO")
            escreval("Senha incorreta.")

            escreval("Tentativas: ", dados[posicao,2], "/3")

         fimse

      fimse

   fimse

fimprocedimento

// --------------------------------------------------

procedimento buscarUsuarioSistema()

var

   loginBusca : caractere
   posicao : inteiro

inicio

   escreval("")
   escreval("===== BUSCAR USUARIO =====")

   escreva("Digite o login: ")
   leia(loginBusca)

   posicao <- buscarUsuario(loginBusca)

   se posicao = 0 entao

      escreval("Usuario nao encontrado.")

   senao

      escreval("")
      escreval("Usuario encontrado.")
      escreval("Nome: ", nomes[posicao])
      escreval("Login: ", logins[posicao])

      se dados[posicao,1] = 1 entao
         escreval("Nivel: Usuario")
      senao
         escreval("Nivel: Administrador")
      fimse

   fimse

fimprocedimento

// --------------------------------------------------

procedimento editarUsuario()

var

   loginBusca : caractere
   posicao : inteiro

inicio

   escreval("")
   escreval("===== EDITAR USUARIO =====")

   escreva("Digite o login do usuario: ")
   leia(loginBusca)

   posicao <- buscarUsuario(loginBusca)

   se posicao = 0 entao

      escreval("Usuario nao encontrado.")

   senao

      escreval("Novo nome: ")
      leia(nomes[posicao])

      escreval("Novo login: ")
      leia(logins[posicao])

      escreval("Nova senha: ")
      leia(senhas[posicao])

      escreval("Novo nivel (1-Usuario / 2-Admin): ")
      leia(dados[posicao,1])

      escreval("Usuario atualizado.")

   fimse

fimprocedimento

// --------------------------------------------------

procedimento removerUsuario()

var

   loginBusca : caractere
   posicao : inteiro
   i : inteiro

inicio

   escreval("")
   escreval("===== REMOVER USUARIO =====")

   escreva("Digite o login: ")
   leia(loginBusca)

   posicao <- buscarUsuario(loginBusca)

   se posicao = 0 entao

      escreval("Usuario nao encontrado.")

   senao

      para i de posicao ate totalUsuarios - 1 faca

         nomes[i] <- nomes[i+1]
         logins[i] <- logins[i+1]
         senhas[i] <- senhas[i+1]

         dados[i,1] <- dados[i+1,1]
         dados[i,2] <- dados[i+1,2]

      fimpara

      totalUsuarios <- totalUsuarios - 1

      escreval("Usuario removido.")

   fimse

fimprocedimento

// --------------------------------------------------

inicio

   totalUsuarios <- 0

   enquanto opcao <> 8 faca

      escreval("")
      escreval("=================================")
      escreval(" SISTEMA VERIFICADOR DE ACESSO ")
      escreval("=================================")

      escreval("1 - Cadastrar usuario")
      escreval("2 - Realizar login")
      escreval("3 - Listar usuarios")
      escreval("4 - Buscar usuario")
      escreval("5 - Editar usuario")
      escreval("6 - Remover usuario")
      escreval("7 - Mostrar total de usuarios")
      escreval("8 - Sair")

      escreval("")
      escreva("Escolha uma opcao: ")
      leia(opcao)

      escolha opcao

         caso 1
            cadastrarUsuario()

         caso 2
            realizarLogin()

         caso 3
            listarUsuarios()

         caso 4
            buscarUsuarioSistema()

         caso 5
            editarUsuario()

         caso 6
            removerUsuario()

         caso 7

            escreval("")
            escreval("Total de usuarios cadastrados: ", totalUsuarios)

         caso 8

            escreval("")
            escreval("Sistema encerrado.")

         outrocaso

            escreval("")
            escreval("Opcao invalida.")

      fimescolha

   fimenquanto

fimalgoritmo
