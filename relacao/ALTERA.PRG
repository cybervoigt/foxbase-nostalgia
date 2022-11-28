*Ricardo Voigt - N∫17 - CB3
*Programa de alteracao do arquivo de dados CLIENTE.DBF
*por arquivo de dados em uso:
use dpto

*desenhar o formul·rio na tela:
tit="Alteracao de dados"
do cabec with tit

@6,6 to 18,62 double
scroll 5,5,17,60,-12
@5,5 to 17,60 double

@7,8 say "Codigo:"
@9,8 say "Nome:"

* LA«O INFINITO:
do while .t.
   *criar vari·veis:
   dptom=0
   localm=space(10)

   *entrar cÛdigo do cliente:
   @7,30 get dptom pict"999"
   @20,25 say "-1 ENCERRA!"
   read
   @20,25 say space(50)

   *verificar se È saÌda:
   if dptom=-1
      exit
   endif

   *verificar se cÛdigo N√O existe
   locate for dpto=dptom
   if .not. found()
      @20,25 say "Codigo nao existe - tecle algo!"
      wait""
      @20,25 say space(50)
      loop
   endif

   *trazer dados do arquivo -> RAM:
   localm=local

   *editar as demais vari·veis:
   @9,30 get localm
   read

   *substituir campos por variaveis
   replace dpto with dptom
   replace local with localm

*FIM DO LACO
enddo
use
returnç
