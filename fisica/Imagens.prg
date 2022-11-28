do while .t.
set status off
set talk off
set procedure to procede
clear


*desenhar o formul·rio na tela:
tit="Programa de Fisica"
do cabec with tit

@6,7 to 19,62 double
scroll 5,5,17,60,-13
@5,5 to 18,60 double


store 0 to dob,di,tob,rc,a,ti,df
store space(50) to te,ci



@ 06,10 say "Distancia Focal......: "

@ 07,10 say "Raio de Curvatura....: "

@ 08,10 say "Ampliacao............: "

@ 09,10 say "Tamanho do Objeto....: "

@ 10,10 say "Tamanho da Imagem....: "

@ 11,10 say "DistÉncia da Imagem..: "

@ 12,10 say "DistÉncia do Objeto..: "



@ 06,33 get df pict "999.9"
read
@ 07,33 get rc pict "999.9"
read
@ 08,33 get a pict "999.9"
read
@ 09,33 get tob pict "999.9"
read
@ 10,33 get ti pict "999.9"
read
@ 11,33 get di pict  "999.9"
read

**  distancia do objeto deve ser positivo!
do while .t.
   @ 12,33 get dob pict "999.9"
   @ 20,25 say "Distancia do objeto deve ser positivo!"
   read
   if dob<0
      loop
   endif
   exit
enddo

@ 20,25 say space(50)

do while .t.
do while .t.

if rc#0 .and. df#0 .and. dob#0
   *variaveis a, di, ti e tob:
*   di  = (df*dob)/(dob-df)
*   a   = -(di/dob)
*   ti  = ?
*   tob = ?
   @ 20,25 say "I/O Error"
   exit

endif

if rc#0 .and. df#0 .and. di#0
   *variaveis a, dob, ti e tob:
*   dob = (df*di)/(di-df)
*   a   = -(di/dob)
*   ti  = ?
*   tob = ?

   @ 20,25 say "I/O Error"
   exit

endif

if rc#0 .and. df#0 .and. tob#0
    *variaveis a, dob, di, ti

*    a   = ?
*    ti  = - (df * tob) / (dob - df)
*    di  = ?
*    dob = ( ( -df * tob) + (df * ti) )/ti
*   dob = ( ( -df * tob) + (df * ti) )/ti
*   di  = -(a*dob)

   @ 20,25 say "I/O Error"
   exit

endif

if rc#0 .and. df#0 .and. ti#0
   *variaveis a, dob, di, tob

*    dob = ( ( -df * tob) + (df * ti) )/ti
*    di  = 
*    tob = 
*    a   =

   @ 20,25 say "I/O Error"
   exit
endif

if rc#0 .and. df#0 .and. a#0
   *variaveis dob, di, tob, ti
*   dob = 
*   di  = 
*   ti  = 
*   tob = 

   @ 20,25 say "I/O Error"
   exit
endif

if rc#0 .and. dob#0 .and. di#0
   *variaveis df, tob, ti, a
*   a   = -(di/dob)
*   df  = rc/2
*   tob = 
*   ti  = 


   @ 20,25 say "I/O Error"
   exit
   
endif

if rc#0 .and. dob#0 .and. tob#0
   *variaveis df, ti, di, a
   df = rc/2
   di=(df*dob)/(dob-df)
   a = -(di/dob)
   ti = tob * a
   exit

endif

if rc#0 .and. dob#0 .and. ti#0
   *variaveis df, di,tob, a
   df  = rc/2
   di  = (df*dob)/(dob-df)
   a   = -(di/dob)
   tob = ti/a
   exit

endif

if rc#0 .and. dob#0 .and. a#0
   *variaveis df, tob, ti, di
*   df  = rc/2
*   di  = (df*dob)/(dob-df)
*   ti  =
*   tob =

   @ 20,25 say "I/O Error"
   exit
endif

if rc#0 .and. di#0 .and. tob#0
   *variaveis df, dob, ti, a
   df  = rc/2
   dob = (df*di)/(di-df)
   a   = -(di/dob)
   ti  = a*tob
   exit
endif

if rc#0 .and. di#0 .and. ti#0
   *variaveis df, dob, tob, a
   df  = rc/2
   dob = (df*di)/(di-df)
   a   = -(di/dob)
   tob = ti/a
   exit
endif

if rc#0 .and. di#0 .and. a#0
   *variaveis df, dob, tob, ti
*   df  = rc/2
*   dob = (df*di)/(di-df)
*   tob = 
*   ti  =

   @ 20,25 say "I/O Error"
   exit
endif

if rc#0 .and. tob#0 .and. ti#0
   *variaveis df, dob, di, a
   df  = rc/2
   a   = ti/tob
   dob = ( ( -df * tob) + (df * ti) )/ti
   di  = -(a*dob)
   exit
endif

if rc#0 .and. tob#0 .and. a#0
   *variaveis df, dob, di, ti
   df  = rc/2
   ti  = a*tob
   dob = ( ( -df * tob) + (df * ti) )/ti
   di  = -(a*dob)
   exit
endif

if rc#0 .and. ti#0 .and. a#0
   *variaveis df, tob, dob, di
   df  = rc/2
   tob = ti/a
   dob = ( ( -df * tob) + (df * ti) )/ti
   di  = -(a*dob)
   exit
endif

if df#0 .and. dob#0 .and. di#0
   *variaveis rc, tob, ti, a
*   rc  = df*2
*   a   = -(di/dob)
*   ti  =
*   tob =

   @ 20,25 say "I/O Error"
   exit
endif

if df#0 .and. dob#0 .and. tob#0
   *variaveis rc, di, ti, a
   rc = df*2
   di=(df*dob)/(dob-df)
   a = -(di/dob)
   ti = tob * a
   exit
endif

if df#0 .and. dob#0 .and. ti#0
   *variaveis rc, tob, di, a
   rc  = df*2
   di  = (df*dob)/(dob-df)
   a   = -(di/dob)
   tob = ti/a
   exit
endif

if df#0 .and. dob#0 .and. a#0
   *variaveis di, rc, ti, tob
*   di  = -(a*dob)
*   rc  = df*2
*   ti  = 
*   tob = 

   @ 20,25 say "I/O Error"
   exit
endif

if df#0 .and. di#0 .and. tob#0
   *variaveis rc, dob, ti, a
   rc  = df*2
   dob = (df*di)/(di-df)
   a   = -(di/dob)
   ti  = tob*a
   exit
endif

if df#0 .and. di#0 .and. ti#0
   *variaveis dob, tob, rc, a
   rc  = df*2
   dob = (df*di)/(di-df)
   a   = -(di/dob)
   tob = ti/a
   exit
endif

if df#0 .and. di#0 .and. a#0
   *variaveis dob, rc, tob, ti
*   rc  = df*2
*   dob = ( ( -df * tob) + (df * ti) )/ti
*   ti  = 
*   tob = 

   @ 20,25 say "I/O Error"
   exit
endif

if df#0 .and. tob#0 .and. ti#0
   *variaveis rc, a, dob, di
*   rc  = df*2
*   dob = ( ( -df * tob) + (df * ti) )/ti
*   a   = (ti/tob)
*   di  = -(a*dob)
   @ 20,25 say "I/O Error"
   exit

endif

if df#0 .and. tob#0 .and. a#0
   *variaveis rc, ti, dob, di
   rc  = df*2
   ti  = a*tob
   dob = ( ( -df * tob) + (df * ti) )/ti
   di  = -(a*dob)
   exit
endif

if df#0 .and. ti#0 .and. a#0
   *variaveis rc, tob, dob, di
   rc  = df*2
   tob = ti/a
   dob = (( -df * tob) + (df * ti))/ti
   di  = -(a*dob)
   exit
endif

if dob#0 .and. di#0 .and. tob#0
   *variaveis a, ti, rc, df
   df = 1/((1/dob)+(1/di))
   rc =df*2
   a  = -(di/dob)
   ti = a*tob
   exit
endif

if dob#0 .and. di#0 .and. ti#0
   *variaveis rc, df, a, tob
   df = 1/((1/dob)+(1/di))
   rc =df*2
   a  = -(di/dob)
   tob = ti/a
   exit
endif

if dob#0 .and. di#0 .and. a#0
   *variaveis tob, ti, rc, df
*   df  = 1/((1/dob)+(1/di))
*   rc  = df*2
*   ti  = 
*   tob = 

   @ 20,25 say "I/O Error"
   exit
endif

if dob#0 .and. tob#0 .and. ti#0
   *variaveis di, df, rc, a
   a  = ti/tob
   di = -(a*dob)
   df = 1/((1/dob)+(1/di))
   rc = df*2
   exit
endif

if dob#0 .and. tob#0 .and. a#0
   *variacoes ti, di, rc, df
   ti = a*tob
   di = -(a*dob)
   df = 1/((1/dob)+(1/di))
   rc = df*2
   exit
endif

if dob#0 .and. ti#0 .and. a#0
   *variaveis tob, rc, df, di
   di  = -(a*dob)
   df  = 1/((1/dob)+(1/di))
   rc  = df*2
   tob = ti/a
   exit
endif

if di#0 .and. tob#0 .and. ti#0
   *variaveis dob, a, rc, df
   a   = ti/tob
   dob = -(di/a)
   df  = 1/((1/dob)+(1/di))
   rc  = df*2
   exit
endif

if di#0 .and. tob#0 .and. a#0
   *variaveis dob, df, rc, ti
   dob = -(di/a)
   df  = 1/((1/dob)+(1/di))
   rc  = df*2
   ti  = a*tob
   exit
endif

if di#0 .and. ti#0 .and. a#0
   *variaveis dob, tob, rc, df
   dob = -(di/a)
   df  = 1/((1/dob)+(1/di))
   rc  = df*2
   tob = ti/a
   exit
endif

if tob#0 .and. ti#0 .and. a#0
   *variaveis di, dob, df, rc
   
*   dob = (( -df * tob) + (df * ti))/ti
*   di  = 
*   df  = 
*   rc  = 

   @ 20,25 say "I/O Error"
   exit
endif

exit
enddo

if rc=0 .or. df=0 .or. di=0 .or. dob=0 .or. a=0 .or. ti=0 .or. tob=0
   exit
endif

*fase de classificacao:
if df > 0
   te = "Cìncavo"
  if ti > tob
   ci = "Real / Invertida / Ampliada"
  endif
  if ti < tob
   ci = "Real / Invertida / Reduzida"
  endif
  if (tob + ti) = 0
   ci = "Real / Invertida / Mesmo Tamanho"
  endif
  if ti > tob .and. di < 0
   ci = "Virtual / Direta / Ampliada"
  endif
endif

if df < 0
   te = "Convexo"
   ci = "Virtual / Direta / Reduzida"
endif

if df < 0 .and. a < 0
   te = "Convexo"
   ci = "Virtual / Indireta / Reduzida"
endif


if a = 1
   te = "Plano"
   ci = "Virtual / Direta / Mesmo Tamanho"
endif

*clear

*fase de apresentacao dos dados:

if df#0
@ 06,33 say df pict "999.9"
endif
if df > 999.9
   @ 06,33 say "***INFINITO***"
endif


if rc#0
@ 07,33 say rc pict "999.9"
endif
if rc > 999.9
   @ 07,33 say "***INFINITO***"
endif


if a#0
@ 08,33 say  a pict "999.9"
endif

if tob#0
@ 09,33 say  tob pict "999.9"
endif

if ti#0
@ 10,33 say  ti pict "999.9"
endif

if di#0
@ 11,33 say  di pict  "999.9"
endif

if dob#0
@ 12,33 say  dob pict "999.9"
endif


@ 14,10 say "Tipo de Espelho......: "
@ 14,33 say te


@ 16,10 say "Classificacao da imagem:"
@ 17, 13 say ci

exit
enddo

sair=" "



@ 21,10 to 23,62 double
scroll 20,8,22,60,-3
@ 20,8 to 22,60 double


@ 21,13 say "Voce quer (S)air ou (D)igitar outro?(S/D)" get sair pict"!" ; 
           valid sair="S" .or. sair="D"
read
if sair="S"
   exit
else
   loop
endif
enddo
returnç
