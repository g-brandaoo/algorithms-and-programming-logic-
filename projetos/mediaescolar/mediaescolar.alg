algoritmo "SistemaMediaEscolar"

// ---------------------------------------------------
// Sistema de Média Escolar
// Projeto didático em Portugol para Visualg
// ---------------------------------------------------

var

// Vetores e matrizes
nomes: vetor[1..50] de caractere
turmas: vetor[1..50] de caractere
notas: matriz[1..50,1..3] de real
medias: vetor[1..50] de real
situacoes: vetor[1..50] de caractere

// Variáveis gerais
totalAlunos: inteiro
opcao: inteiro

// ---------------------------------------------------
// FUNÇÃO PARA CALCULAR MÉDIA
// ---------------------------------------------------

funcao calcularMedia(n1, n2, n3: real): real
inicio
   retorne (n1 + n2 + n3) / 3
fimfuncao

// ---------------------------------------------------
// FUNÇÃO PARA RETORNAR SITUAÇÃO
// ---------------------------------------------------

funcao verificarSituacao(media: real): caractere
inicio

   se media >= 7 entao
      retorne "Aprovado"
   senao
      se media >= 5 e media < 7 entao
         retorne "Recuperacao"
      senao
         retorne "Reprovado"
      fimse
   fimse

fimfuncao

// ---------------------------------------------------
// PROCEDIMENTO CADASTRAR ALUNO
// ---------------------------------------------------

procedimento cadastrarAluno
inicio

   se totalAlunos < 50 entao

      totalAlunos <- totalAlunos + 1

      escreval("")
      escreval("===== CADASTRO DE ALUNO =====")

      escreva("Nome do aluno: ")
      leia(nomes[totalAlunos])

      escreva("Turma: ")
      leia(turmas[totalAlunos])

      escreva("Nota 1: ")
      leia(notas[totalAlunos,1])

      escreva("Nota 2: ")
      leia(notas[totalAlunos,2])

      escreva("Nota 3: ")
      leia(notas[totalAlunos,3])

      medias[totalAlunos] <- calcularMedia(
         notas[totalAlunos,1],
         notas[totalAlunos,2],
         notas[totalAlunos,3]
      )

      situacoes[totalAlunos] <- verificarSituacao(
         medias[totalAlunos]
      )

      escreval("")
      escreval("Aluno cadastrado com sucesso!")

   senao

      escreval("Limite de alunos atingido!")

   fimse

fimprocedimento

// ---------------------------------------------------
// PROCEDIMENTO LISTAR ALUNOS
// ---------------------------------------------------

procedimento listarAlunos

var
i: inteiro

inicio

   escreval("")
   escreval("===== LISTA DE ALUNOS =====")

   se totalAlunos = 0 entao

      escreval("Nenhum aluno cadastrado.")

   senao

      para i de 1 ate totalAlunos faca

         escreval("")
         escreval("Aluno ", i)
         escreval("Nome: ", nomes[i])
         escreval("Turma: ", turmas[i])

         escreval(
            "Notas: ",
            notas[i,1], " | ",
            notas[i,2], " | ",
            notas[i,3]
         )

         escreval("Media: ", medias[i]:0:2)
         escreval("Situacao: ", situacoes[i])

      fimpara

   fimse

fimprocedimento

// ---------------------------------------------------
// PROCEDIMENTO BUSCAR ALUNO
// ---------------------------------------------------

procedimento buscarAluno

var
i: inteiro
nomeBusca: caractere
encontrado: logico

inicio

   encontrado <- falso

   escreval("")
   escreval("===== BUSCAR ALUNO =====")

   escreva("Digite o nome: ")
   leia(nomeBusca)

   para i de 1 ate totalAlunos faca

      se nomes[i] = nomeBusca entao

         encontrado <- verdadeiro

         escreval("")
         escreval("Aluno encontrado!")
         escreval("Nome: ", nomes[i])
         escreval("Turma: ", turmas[i])

         escreval(
            "Notas: ",
            notas[i,1], " | ",
            notas[i,2], " | ",
            notas[i,3]
         )

         escreval("Media: ", medias[i]:0:2)
         escreval("Situacao: ", situacoes[i])

      fimse

   fimpara

   se encontrado = falso entao
      escreval("Aluno nao encontrado.")
   fimse

fimprocedimento

// ---------------------------------------------------
// PROCEDIMENTO EDITAR ALUNO
// ---------------------------------------------------

procedimento editarAluno

var
i: inteiro
nomeBusca: caractere

inicio

   escreval("")
   escreval("===== EDITAR ALUNO =====")

   escreva("Digite o nome do aluno: ")
   leia(nomeBusca)

   para i de 1 ate totalAlunos faca

      se nomes[i] = nomeBusca entao

         escreval("")
         escreval("Novo nome: ")
         leia(nomes[i])

         escreval("Nova turma: ")
         leia(turmas[i])

         escreval("Nova nota 1: ")
         leia(notas[i,1])

         escreval("Nova nota 2: ")
         leia(notas[i,2])

         escreval("Nova nota 3: ")
         leia(notas[i,3])

         medias[i] <- calcularMedia(
            notas[i,1],
            notas[i,2],
            notas[i,3]
         )

         situacoes[i] <- verificarSituacao(
            medias[i]
         )

         escreval("")
         escreval("Aluno atualizado!")

      fimse

   fimpara

fimprocedimento

// ---------------------------------------------------
// PROCEDIMENTO REMOVER ALUNO
// ---------------------------------------------------

procedimento removerAluno

var
i, j: inteiro
nomeBusca: caractere

inicio

   escreval("")
   escreval("===== REMOVER ALUNO =====")

   escreva("Digite o nome do aluno: ")
   leia(nomeBusca)

   para i de 1 ate totalAlunos faca

      se nomes[i] = nomeBusca entao

         para j de i ate totalAlunos - 1 faca

            nomes[j] <- nomes[j + 1]
            turmas[j] <- turmas[j + 1]

            notas[j,1] <- notas[j + 1,1]
            notas[j,2] <- notas[j + 1,2]
            notas[j,3] <- notas[j + 1,3]

            medias[j] <- medias[j + 1]
            situacoes[j] <- situacoes[j + 1]

         fimpara

         totalAlunos <- totalAlunos - 1

         escreval("")
         escreval("Aluno removido!")

      fimse

   fimpara

fimprocedimento

// ---------------------------------------------------
// PROGRAMA PRINCIPAL
// ---------------------------------------------------

inicio

   totalAlunos <- 0

   repita

      escreval("")
      escreval("===================================")
      escreval("     SISTEMA DE MEDIA ESCOLAR")
      escreval("===================================")

      escreval("1 - Cadastrar aluno")
      escreval("2 - Listar alunos")
      escreval("3 - Buscar aluno")
      escreval("4 - Editar aluno")
      escreval("5 - Remover aluno")
      escreval("6 - Sair")

      escreval("")
      escreva("Escolha uma opcao: ")
      leia(opcao)

      escolha opcao

         caso 1
            cadastrarAluno

         caso 2
            listarAlunos

         caso 3
            buscarAluno

         caso 4
            editarAluno

         caso 5
            removerAluno

         caso 6
            escreval("")
            escreval("Sistema encerrado.")

         outrocaso
            escreval("")
            escreval("Opcao invalida.")

      fimescolha

   ate opcao = 6

fimalgoritmo
