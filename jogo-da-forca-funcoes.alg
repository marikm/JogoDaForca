algoritmo "JogoDaForca"

var
 listaPalavras: vetor[0..4] de caracter
 i: inteiro
 palavraUsuario, palavraMisteriosa, letraPalavra: caractere
 string, palavraAtual: vetor[1..5] de caractere
 listaAcertos, listaErros: vetor[0..5] de caractere
 numAcertos, numErros, posLista: inteiro
 indice, tamanhoPalavra: inteiro
 chances: inteiro
 tentativaLetra: caractere
 letraEncontrada, ganhou: logico

inicio
   ganhou         <- falso
   numAcertos     <- 0
   numErros       <- 0
   tamanhoPalavra <- 0
   chances        <- 6
   posLista       <- 0
   // usuario insere as palavras para ser sorteada uma palavra misteriosa no final
      i <- 0
      enquanto i <= 4 faca
         escreval("Escreva 5 palavras de até 5 letras para ser adivinhada.....:")
         escreva(i+1, "° palavra: ")
         leia(palavraUsuario)
         limpatela
         listaPalavras[i] <- palavraUsuario
         i <- i + 1
      fimenquanto
      aleatorio 0, 4
         leia(i)
      aleatorio off
   

   palavraMisteriosa <- listaPalavras[i]
   tamanhoPalavra <- compr(palavraMisteriosa)
   escreval()
   indice <- 1

   // tranformando caractere em string
   enquanto indice <= tamanhoPalavra faca
      letraPalavra <- copia(palavraMisteriosa, indice, 1)
      string[indice] <- letraPalavra
      palavraAtual[indice] <- " _ "
      indice <- indice+1
   fimenquanto
   
   // imprime * para cada letra digitada errada, 6 chances
   para posLista de 0 ate 5 faca
      listaErros[posLista] <- " * "
   fimpara


   enquanto chances > 0 faca
      limpatela
      se (chances = 6) entao
         escreval("====================Bem vindo ao jogo da forca====================")
         escreval( )
         escreval("      ''''''''''''''''                                            ")
         escreval("      ''''''''''''''''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("     '''''                                                        ")
         escreval("  '''''''''''                                                     ")
         escreval("   '''''''''                                                      ")
      fimse
      
      se (chances = 5) entao
         escreval("Que pena, você errou 1 letra")
         escreval( )
         escreval("      ''''''''''''''''                                            ")
         escreval("      ''''''''''''''''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''         * * *                                           ")
         escreval("      '''        *     *                                          ")
         escreval("      '''         * * *                                           ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("      '''                                                         ")
         escreval("     '''''                                                        ")
         escreval("  '''''''''''                                                     ")
         escreval("   '''''''''                                                      ")
      fimse
      
      se (chances = 4) entao
         escreval("Que pena, você errou outra letra")
         escreval( )
         escreval("      ''''''''''''''''                                            ")
         escreval("      ''''''''''''''''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''         * * *                                           ")
         escreval("      '''        *     *                                          ")
         escreval("      '''         * * *                                           ")
         escreval("      '''           |                                             ")
         escreval("      '''           |                                             ")
         escreval("      '''           |                                             ")
         escreval("      '''           |                                             ")
         escreval("      '''           |                                             ")
         escreval("      '''           |                                             ")
         escreval("      '''                                                         ")
         escreval("     '''''                                                        ")
         escreval("  '''''''''''                                                     ")
         escreval("   '''''''''                                                      ")
      fimse
      
      se (chances = 3) entao
         escreval("Que pena, você errou outra letra")
         escreval( )
         escreval("      ''''''''''''''''                                            ")
         escreval("      ''''''''''''''''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''         * * *                                           ")
         escreval("      '''        *     *                                          ")
         escreval("      '''         * * *                                           ")
         escreval("      '''           |\                                            ")
         escreval("      '''           | \                                           ")
         escreval("      '''           |  \                                          ")
         escreval("      '''           |                                             ")
         escreval("      '''           |                                             ")
         escreval("      '''           |                                             ")
         escreval("      '''                                                         ")
         escreval("     '''''                                                        ")
         escreval("  '''''''''''                                                     ")
         escreval("   '''''''''                                                      ")
      
      fimse
      
      se (chances = 2) entao
         escreval("Que pena, você errou outra letra")
         escreval( )
         escreval("      ''''''''''''''''                                            ")
         escreval("      ''''''''''''''''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''         * * *                                           ")
         escreval("      '''        *     *                                          ")
         escreval("      '''         * * *                                           ")
         escreval("      '''          /|\                                            ")
         escreval("      '''         / | \                                           ")
         escreval("      '''        /  |  \                                          ")
         escreval("      '''           |                                             ")
         escreval("      '''           |                                             ")
         escreval("      '''           |                                             ")
         escreval("      '''                                                         ")
         escreval("     '''''                                                        ")
         escreval("  '''''''''''                                                     ")
         escreval("   '''''''''                                                      ")
      fimse
      
      se (chances = 1) entao
         escreval("Que pena, você errou outra letra")
         escreval( )
         escreval( )
         escreval("      ''''''''''''''''                                            ")
         escreval("      ''''''''''''''''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''         * * *                                           ")
         escreval("      '''        *     *                                          ")
         escreval("      '''         * * *                                           ")
         escreval("      '''          /|\                                            ")
         escreval("      '''         / | \                                           ")
         escreval("      '''        /  |  \                                          ")
         escreval("      '''           |                                             ")
         escreval("      '''            \                                            ")
         escreval("      '''             \                                           ")
         escreval("      '''              \                                          ")
         escreval("     '''''                                                        ")
         escreval("  '''''''''''                                                     ")
         escreval("   '''''''''                                                      ")

      fimse

      se (chances = 0) entao
         escreval("Que pena, você errou outra letra")
         escreval( )
         escreval( )
         escreval("      ''''''''''''''''                                            ")
         escreval("      ''''''''''''''''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''          '''                                            ")
         escreval("      '''         * * *                                           ")
         escreval("      '''        *     *                                          ")
         escreval("      '''         * * *                                           ")
         escreval("      '''          /|\                                            ")
         escreval("      '''         / | \                                           ")
         escreval("      '''        /  |  \                                          ")
         escreval("      '''           |                                             ")
         escreval("      '''          / \                                            ")
         escreval("      '''         /   \                                           ")
         escreval("      '''        /     \                                          ")
         escreval("      '''                                                         ")
         escreval("     '''''                                                        ")
         escreval("  '''''''''''                                                     ")
         escreval("   '''''''''                                                      ")
      fimse
      
      
      
      
      escreva("Letras erradas: ")
      
      para posLista de 0 ate 5 faca
         escreva(" ", listaErros[posLista])
      fimpara
      
      escreval()
      se (chances > 0) e (ganhou=falso) entao
         escreval("numero de chances restantes: ", chances)
      fimse
      
      indice <- 1
      enquanto indice <= tamanhoPalavra faca
         escreva(palavraAtual[indice])
         indice <- indice+1
      fimenquanto
      
      indice <- 1
      enquanto (indice <= tamanhoPalavra) faca
         // verifica se a letra da palavra atual corresponde
         //com a letra da palavra misteriosa
         se (palavraAtual[indice] = string[indice]) entao
            indice <- indice+1
            se  indice = tamanhoPalavra entao
               chances <- -1                 // para sair do loop chances > 0 e nao cair na condicao perdeu
               ganhou <- verdadeiro
            fimse
         senao
            indice <- 1
            escreval()
            escreval()
            escreva("Digite uma letra.........: ")
            leia(tentativaLetra)
            letraEncontrada <- falso
            enquanto (indice <= tamanhoPalavra) faca
            // se já possui letra corretamente adivinhada receber a propria letra
               se (palavraAtual[indice] <> " _ ") entao
                  palavraAtual[indice] <- palavraAtual[indice]
               fimse
               se (string[indice]=tentativaLetra) entao
                  palavraAtual[indice] <- tentativaLetra
                  letraEncontrada <- verdadeiro
               fimse
               escreva(palavraAtual[indice])
               indice <- indice + 1
            fimenquanto
            se (letraEncontrada = verdadeiro) entao
               listaAcertos[numAcertos] <- tentativaLetra
               numAcertos <- numAcertos + 1
            senao
               listaErros[numErros] <- tentativaLetra
               numErros <- numErros + 1
               chances <- chances - 1
            fimse
         fimse
         
      fimenquanto

         escreval()
         escreval()
         se (chances > 0) e (ganhou=falso) entao
            escreval("numero de chances restantes: ", chances)
         fimse
         se (chances = 0) e (ganhou=falso) entao
            limpatela
            escreval( )
            escreval("----------------------- E N F O R C A D O ------------------------")
            escreval("      ''''''''''''''''                                            ")
            escreval("      ''''''''''''''''                                            ")
            escreval("      '''          '''                                            ")
            escreval("      '''          '''                                            ")
            escreval("      '''         * * *                                           ")
            escreval("      '''        *     *                                          ")
            escreval("      '''         * * *                                           ")
            escreval("      '''          /|\                                            ")
            escreval("      '''         / | \                                           ")
            escreval("      '''        /  |  \                                          ")
            escreval("      '''           |                                             ")
            escreval("      '''          / \                                            ")
            escreval("      '''         /   \                                           ")
            escreval("      '''        /     \                                          ")
            escreval("      '''                                                         ")
            escreval("     '''''                                                        ")
            escreval("  '''''''''''                                                     ")
            escreval("   '''''''''                                                      ")
            
            escreval("Você perdeu, a palavra misteriosa era: ", palavraMisteriosa)
         fimse
         se ganhou=verdadeiro entao
            limpatela
            escreval( )
            escreval( )
            escreval("                                                                  ")
            escreval("---------------------- E S T O U    L I V R E --------------------")
            escreval("                                                                  ")
            escreval("                                                                  ")
            escreval("                               * * *                              ")
            escreval("                              *     *                             ")
            escreval("                             \ * * * /                            ")
            escreval("                              \  |  /                             ")
            escreval("                               \ | /                              ")
            escreval("                                 |                                ")
            escreval("                                 |                                ")
            escreval("                                / \                               ")
            escreval("                               /   \                              ")
            escreval("                              /     \                             ")
            escreval("                                                                  ")
            escreval("                                                                  ")
            escreval("                                                                  ")
            escreval("                                                                  ")
            escreval("Voce acertou a palavra misteriosa: ", palavraMisteriosa)
         fimse
      fimenquanto

fimalgoritmo
