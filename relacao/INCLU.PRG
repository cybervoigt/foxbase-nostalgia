*Ricardo Voigt - Nº17 - CB3
*Programa de Inclusao ao arquivo de dados FUNC.DBF
set procedure to procede

*por arquivo de dados em uso no buffer d:
select d
use dpto

*por arquivo em uso no buffer f:
select f
use func

*desenhar o formulário na tela:
tit="Inclusao de funcionarios"
do cabec with tit

@6,6 to 21,62 double
scroll 5,5,20,60,-15
@5,5 to 20,60 double

@7,8 say "Codigo:"
@9,8 say "Nome:"
@11,8 say "Departamento:"

@13,10 say "Codigos dos Departamentos:"
@15,12 say "1 - Recepcao"
@16,12 say "2 - Contabilidade"
@17,12 say "3 - Seguranca"
@18,12 say "4 - Administracao"

* LAÇO INFINITO:
do while .t.
   *criar variáveis:
   codfm=0
   nomefm=space(15)
   dptom=0

   *entrar código do funcionario:
   @7,30 get codfm pict"999"
   @23,25 say "-1 ENCERRA!"
   read
   @23,25 say space(50)

   *verificar se é saída:
   if codfm=-1
      exit
   endif

   *verificar se código já existe
   locate for codf=codfm
   if found()
      @23,25 say "Funcionario ja existe! - tecle algo!"
      wait""
      @23,25 say space(50)
      loop
   endif

   *entrar outros dados:
   @9,30 get nomefm

   *laco para no caso de erro nao precisar 
   *digitar todos os campos denovo!
   do while .t.

   *entrar com o departamento:
   @11,30 get dptom pict"99"
   read

   *verificar se departamento existe:
   select d
   locate for dpto=dptom
   if .not. found()
      @23,25 say"Departamento nao existe! Cadastre novamente!"
      wait""
      @23,25 say space(50)
      loop
   else
      exit
   endif

   *fim do laco
   enddo

   *voltar para buffer f:
   select f

   *criar novo registro:
   append blank

   *Passar dados da RAM -> registro em branco
   replace codf with codfm
   replace nomef with nomefm
   replace dpto with dptom

*fim do laço:
enddo
*fechamento do arquivo
use
return
