algoritmo "SistemaModular"
var
   numero, divisor: inteiro

   inicio
      escreval("=== Sistema Modular ===")
         escreva("Digite um número: ")
            leia(numero)

               escreva("Digite o divisor: ")
                  leia(divisor)

                     se (numero mod divisor) = 0 entao
                           escreval("O número ", numero, " é divisível por ", divisor)
                              senao
                                    escreval("O número ", numero, " NÃO é divisível por ", divisor)
                                       fimse

                                       fimalgoritmo 
