*Ricardo Voigt - N∫17 - CB3
*programa de consulta do arquivo de dados FUNC.DBF
*por arquivos de dados em uso:
select d
use dpto

select f
use func
go top
*relacionar arquivos pelo campo dpto:
set relation to dpto into dpto

set procedure to procede

*variaveis
l=7

*desenhar o formul·rio na tela:
tit="Listagem de dados"
do cabec with tit

@6,4 to 21,79 double
scroll 5,2,20,77,-17
@5,2 to 20,77 double

@6,4 say "Codigo:"
@6,25 say "Nome:"
@6,45 say "Departamento:"

* LA«O ate o final da tebela de dados:
do while .not. eof()

   *escrever linha detalhe:
   @l,4 say codf pict"999"
   @l,23 say nomef
   select d
   @l,48 say local
   select f

   * contar linhas
   l=l+1
   *pule para prÛximo registro:
   skip

   *Se chegar na linha 19:
   if l=19
      wait""
      @22,5 say "Aperte uma tecla para nova tela!"   
      *aguarde para nova tela:
      clear
      do cabec with tit

      @6,4 to 21,79 double
      scroll 5,2,20,77,-17
      @5,2 to 20,77 double

      @6,4 say "Codigo:"
      @6,18 say "Nome:"
      @6,45 say "Departamento:"
      l=7
   endif
   
enddo   
   @22,5 say "Aperte uma tecla para voltar!"   
   wait""
returnç
