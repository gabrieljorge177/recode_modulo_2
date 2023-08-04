Algoritmo "Fly viagens"

const
maxvet = 5

Var
// Seção de Declarações das variáveis 
cliente, destino: vetor [1..maxvet] de caracter
i: Inteiro
opcao: caracter

procedimento exibirMenu()
Inicio
             escreval (" ")
             escreval("1 - Cadastrar cliente")
             escreval("2 - Cadastrar destino")
             escreval("3 - Pesquisar cliente")
             escreval("4 - Pesquisar destino")
             escreval("5 - Sair do programa")
             escreval(" ")
             escreval(" ")
             leia(opcao)
fimprocedimento

procedimento cadastrarCliente()
var
   i: inteiro

inicio

      para i de 1 até maxvet faca
           se cliente[i] = "" entao
              escreval ("Nome que deseja cadastrar: ")
              leia(cliente[i])
              escreval (cliente[i], " cadastrado")
              interrompa
           fimse
     fimpara
fimprocedimento

procedimento cadastrarDestino()
var
   i: inteiro
inicio

     para i de 1 até maxvet faca
           se destino[i] = "" entao
              escreval ("Nome do destino que deseja cadastrar: ")
              leia(destino[i])
              escreval (destino[i], " foi cadastrado para ", cliente[i])
              interrompa
           fimse
     fimpara
fimprocedimento


procedimento pesquisarCliente()
var
   i, indice: inteiro
   nomeProcurado: caractere

inicio

      escreval ("Informe o nome do cliente para saber se há um cadastro: ")
      leia(nomeProcurado)
      para i de 1 até maxvet faca
           se cliente[i] = nomeProcurado entao
              indice <- i
              interrompa
           fimse
     fimpara
                se indice = 0 entao
                   escreval ("Cliente não cadastrado")
                senao
                     escreval("Cliente cadastrado")
                     escreval("Nome: ", cliente[indice])
                fimse
                
fimprocedimento

procedimento pesquisarDestino()
var
   i, indice: inteiro
   nomeProcurado: caractere

inicio

      escreval ("Informe o destino que deseja procurar: ")
      leia(nomeProcurado)
      para i de 1 até maxvet faca
           se destino[i] = nomeProcurado entao
              indice <- i
              interrompa
           fimse
     fimpara
                se indice = 0 entao
                   escreval ("Destino não encontrado")
                senao
                     escreval("Destino encontrado")
                     escreval("Nome do destino: ", destino[indice])
                fimse
fimprocedimento

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval("---------Bem vindo(a) a Fly viagens----------")
repita
      exibirMenu()
             escolha opcao
                     caso "1"
                          cadastrarCliente()
                     caso "2"
                          cadastrarDestino()
                     caso "3"
                          pesquisarCliente()
                     caso "4"
                          pesquisarDestino()
                     caso "5"
                          escreval ("Muito obrigado por viajar conosco!")
                     outrocaso
                          escreval ("Opção inválida ")
             fimescolha
       ate opcao = "5"
fimalgoritmo




