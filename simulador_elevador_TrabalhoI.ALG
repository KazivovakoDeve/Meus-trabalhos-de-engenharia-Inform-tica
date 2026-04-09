Algoritmo "SimuladorElevador"

Var
   andarAtual, capacidade, pessoas, opcao: inteiro
   filaAndar: vetor[1..20] de inteiro
   filaDirecao: vetor[1..20] de caractere
   inicial, fim, i: inteiro
   direcaoAtual: caractere

Inicio

   // Inicialização
   andarAtual <- 0
   capacidade <- 8
   pessoas <- 0
   inicial <- 1
   fim <- 0
   direcaoAtual <- "Parado" // Parado, Subir, Ou descer


   escreval("                                                   ")
   escreval("               Estado Inicial do Elevador                     ")
   escreval("                                                   ")
   //escreval("»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»")


   // Apresentando o estado inicial do elevador

   escreval("               Andar Actual: ", andarAtual)
   escreval("               Capacidade: ", capacidade)
   escreval("               Pessoas: ", pessoas, " Pessoas")
   escreval("               Inicial: ", inicial)
   escreval("               Fim: ", fim)
   escreval("               Direcção Atual: ", direcaoAtual)



   // Extrutura de repetição para repetir o menu até que a opção digita
   //pelo usúario seja igual a 0 para terminar tudo.
   escreval("«««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««")

   Repita
                // Menu inicial do sistema
      escreval("")
      escreval("1 - Chamar elevador")
      escreval("2 - Entrar pessoas")
      escreval("3 - Sair pessoas")
      escreval("4 - Processar próxima chamada")
      escreval("5 - Estado atual")
      escreval("0 - Sair")
      leia(opcao)

      escolha opcao

         // CHAMAR ELEVADOR
      caso 1
         se fim < 20 entao
            fim <- fim + 1
            escreva("Digite o andar: ")
            leia(filaAndar[fim])
            escreva("Direção: (Subir Ou Descer): ")
            leia(filaDirecao[fim])
         senao
            escreval("Fila cheia!")
         fimse

         // Entrar pessoas no Elevador
      caso 2
         escreva("Número de pessoas a entrar: ")
         leia(i)
         se pessoas + i <= capacidade entao
            pessoas <- pessoas + i
         senao
            escreval("Capacidade excedida!")
         fimse

         // Sair pessoas no elevador
      caso 3
         escreva("Quantas pessoas querem sair? ")
         leia(i)
         se i <= pessoas entao
            pessoas <- pessoas - i
         senao
            escreval("Número inválido!")
         fimse

         // Processar chamadas no elevador
      caso 4
         se inicial <= fim entao

            // Definir direção  do elevador, subir ou decer

            se filaAndar[inicial] > andarAtual entao
               direcaoAtual <- "subir"
            senao
               direcaoAtual <- "decer"
            fimse

            // Movimentar o elevador para qualquer andar
            enquanto andarAtual <> filaAndar[inicial] faca
               se direcaoAtual = "subir" entao
                  andarAtual <- andarAtual + 1
               senao
                  andarAtual <- andarAtual - 1
               fimse
               escreval("Elevador no andar: ", andarAtual)
            fimenquanto

            escreval("Parou no andar ", andarAtual)

            // Remover da fila
            inicial <- inicial + 1

            se inicial > fim entao
               direcaoAtual <- "S"
            fimse

         senao
            escreval("Sem chamadas!")
         fimse

         // Imprimir o estado do elevador
         // isso inclui o andar local, número de pessoas nele etc..
      caso 5
         escreval("----- ESTADO DO ELEVADOR -----")
         escreval("Andar atual: ", andarAtual)
         escreval("Pessoas: ", pessoas, "/", capacidade)
         escreval("Direção: ", direcaoAtual)
         escreval("Chamadas na fila:",[i])
         para i de inicial ate fim faca
            escreval("Andar: ", filaAndar[i], " | Direção: ", filaDirecao[i])
         fimpara

      outrocaso
         escreval("Opção  Inválida, tente outra vez de (1-5 e 0 é sair)")
      fimescolha
   ate opcao = 0

Fimalgoritmo