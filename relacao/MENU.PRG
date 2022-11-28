*Ricardo Voigt - Nß17 - CB3
*menu dos programas do arquivo de dados FUNC.DBF
set procedure to procede
set message to 23

*variavel para escolha
m=0
s=space(1)
*LACO INFINITO
do while .t.

*desenhar o menu na tela:
clear
tit="Menu Principal"
do cabec with tit
@6,6 to 22,62 double
scroll 5,5,21,60,-16

@5,5 to 21,60 double

@7,8 prompt"INCLUSAO" message "INCLUSAO DE FUNCIONARIOS"
@9,8 prompt"EXCLUSAO" message "EXCLUI DADOS DE FUNCIONARIOS"
@11,8 prompt"LISTAGEM" message "LISTA TODOS DADOS DO ARQUIVO"
@13,8 prompt"SAIDA" message "SAI DO SISTEMA"
menu to m
do case
   case m=1
      do inclu
   case m=2
      do exclu
   case m=3
      do lista
   case m=4
      @11,29 to 15,67 double
      SCROLL 10,28,14,65,-7
      @10,28 to 14,65 double
      @12,31 say "Deseja realmente sair?(s/n)" get s pict"!" valid ; 
              s="S" .or. s="N"
      read
      if s="S"
           exit
      endif
endcase
enddo
returnç
