algoritmo "jogo_da_velha"
var
l, c, cont: inteiro
velha: vetor [1..3,1..3] de caracter

inicio
repita
   se (cont%2=0) entao
      escreval ("play 1: ")
      escreval (velha[1,1] ,"|",velha[1,2] ,"|", velha[1,3])
      escreval (velha[2,1] ,"|",velha[2,2] ,"|", velha[3,3])
      escreval (velha[3,1] ,"|",velha[3,2] ,"|", velha[3,3])
      escreva ("Insira a linha [1..2..3], correspondendo o simbolo X: ")
      leia (l)
      escreva ("Insira a coluna [1..2..3], correspondendo o simbolo X: ")
      leia (c)
      se ((l>3) ou (c>3)) entao
         escreva ("Tabulacao incorreta, perdeu a vez.")
      senao
         se ((velha[l,c])="") entao
            velha[l,c] <- "X"
            cont <- cont+1
         fimse
      fimse
      limpatela
   senao
      escreval ("play 2: ")
      escreval ("0 0 0")
      escreval ("0 0 0")
      escreval ("0 0 0")
      escreva ("Insira a linha [1..2..3], correspondendo o simbolo X: ")
      leia (l)
      escreva ("Insira a coluna [1..2..3], correspondendo o simbolo X: ")
      leia (c)
      se ((l>3) ou (c>3)) entao
         escreva ("Incorreto, perdeu a vez.")
      senao
         se ((velha[l,c])="") entao
            velha[l,c] <- "O"
            cont <- cont+1
         fimse
      fimse
      limpatela
   fimse


ate cont=9

fimrepita



fimalgoritmo
