algoritmo "vetores"
var
// maior palavra tem 46 letras

 palavraMisteriosa, letraPalavra: caractere
 string: vetor[1..5] de caractere
 palavraAtual: vetor[1..5] de caractere
 indice, tamanhoPalavra: inteiro
 chances: inteiro
 ganhou: logico
 tentativaLetra, acertos, erros: caractere
 
funcao LerPalavra(palavra: caractere): caractere
   var
   inicio
      escreva("digite uma palavra: ")
      leia(palavra)
      retorne palavra
   
fimfuncao

inicio

   palavraMisteriosa <- Lerpalavra(palavraMisteriosa)
   tamanhoPalavra <- compr(palavraMisteriosa)
   escreval("A palavra possui", tamanhoPalavra, " letras")
   indice <- 1

   // tranformando caractere em string
   enquanto indice <= tamanhoPalavra faca
      letraPalavra <- copia(palavraMisteriosa, indice, 1)
      string[indice] <- letraPalavra
      palavraAtual[indice] <- " _ "
      escreva(palavraAtual[indice])
      indice <- indice+1
   fimenquanto

   enquanto chances < 6 faca
      indice <- 1
         escreval()
         escreva("Digite uma letra.........: ")
         leia(tentativaLetra)

         enquanto (indice <= tamanhoPalavra) faca
            se (palavraAtual[indice] <> " _ ") entao
               palavraAtual[indice] <- palavraAtual[indice]
            fimse
            se (string[indice]=tentativaLetra) entao
               palavraAtual[indice] <- tentativaLetra
            fimse
            escreva(palavraAtual[indice])
            indice <- indice + 1
         fimenquanto
         chances <- chances + 1
      fimenquanto
      
fimalgoritmo
