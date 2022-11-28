*Ricardo Voigt - Nº17 - CB3
*procedure de cabecalho
clear
procedure cabec
parameters titulo
set date french
set talk off
set status off

@1,2 to 4,79 double
scroll 0,0,3,77,-4
@0,0 to 3,77 double

@1,2 say "Fundacao Evangelica de Novo Hamburgo"
@2,2 say "Ricardo Voigt - N§17 - CB3 - 1999"
@2,36 say titulo
@1,60 say "Data:"
@1,65 say date()
@2,60 say "Hora:"
@2,65 say time()

return
