algoritmo "Mercado"
var
   produto: caractere
      preco, dinheiro: real

      inicio
         escreval("=== Sistema de Mercado ===")
            escreva("Digite o nome do produto: ")
               leia(produto)

                  escreva("Digite o preço do produto: R$ ")
                     leia(preco)

                        escreva("Digite o valor pago: R$ ")
                           leia(dinheiro)

                              se dinheiro >= preco entao
                                    escreval("Compra realizada! Troco: R$ ", dinheiro - preco:4:2)
                                       senao
                                             escreval("Dinheiro insuficiente!")
                                                fimse
                                                fimalgoritmo
