*Ricardo Voigt - N∫17 - CB3
*Programa de exclusao de dados do FUNC.DBF
*por arquivo de dados em uso:
set procedure to procede
select f
use func
select d
use dpto
select f

*relacionar arquivos pelo campo dpto:
set relation to dpto into dpto

*desenhar o formul·rio na tela:
tit="Exlusao de dados"
do cabec with tit

@6,6 to 18,62 double
scroll 5,5,17,60,-12
@5,5 to 17,60 double

@7,8 say "Codigo:"
@9,8 say "Nome:"
@11,8 say "Departamento:"

* LA«O INFINITO:
do while .t.
   *criar variavel de confirmacao:
   conf=" "

   *criar variavel de campo chave:
   codfm=0

   *criar vari·veis:
   nomefm=space(15)
   dptom=0

   *entrar cÛdigo do funcionario:
   @7,30 get codfm pict"999"
   @20,25 say space (50)
   @20,25 say "-1 ENCERRA!"
   read
   @20,25 say space(50)

   *verificar se È saÌda:
   if codfm=-1
      exit
   endif

   *verificar se cÛdigo N√O existe
   locate for codf=codfm
   if .not. found()
      @20,25 say "Codigo nao existe - tecle algo!"
      wait""
      @20,25 say space(50)
      loop
   endif

   *trazer dados do arquivo -> RAM:
   nomefm=nomef
   dptom=dpto

   *mostrar dados na tela:
   @9,30 say nomefm
   select d
   @11,30 say local
select f
   *pedir confirmacao:
   @ 20,25 say "Confirma exclusao?(s/n)" get conf pict"!" ; 
           valid conf="S".or.conf="N"
   read
   *excluir
   if conf="S"
      delete
      pack
   endif
*FIM DO LACO
enddo
use
returnç
