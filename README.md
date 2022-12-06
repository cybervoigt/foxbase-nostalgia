# foxbase-nostalgia
Primeira linguagem de programação...

Outro dia eu li um post no Linkedin pedindo pra comentar qual foi a sua primeira linguagem de programação e eu lembrei que tinha salvo em casa ainda alguns arquivos antigos (PRG) do tempo do Ensino Médio/Técnico em Processamento de Dados (ano 1999), onde aprendemos a programar com a lingagem FoxBASE+ (se não me engano depois virou FoxPro, e é muito semelhante também à linguagem Clipper)

Enfim, neste repositório está um pouco desta nostalgia... :-)

Em parceria com o professor de Física fizemos um trabalho sobre "Espelhos côncavos e convexos".

(Tentando lembrar o nome dos professores, Roberto Wild era de processamento de dados)

Para baixar o foxbase e executar:

https://winworldpc.com/product/foxbase/plus-210

Descompactei o arquivo disk01.img com o programa 7-zip

Para executar o foxplus.exe, pode ser usado o programa DOSBox

https://www.dosbox.com/



# Hello world...

Em uma tela que vc tinha apenas 80 colunas e 24 linhas, esse era o comando para escrever um "Hello World" na lina 1 e coluna 10:

@1,10 say "Hello World..."


![image](https://user-images.githubusercontent.com/57003640/204542219-a75b2bb3-4a85-4768-ba48-092d6f8851e1.png)




# Trabalho de Física

Consegui executar o programa do trabalho da disciplina de Física (Espelhos côncavos e convexos) citado acima.

Infelizmente eu ainda não tenho um exemplo com números para testar o programa (naquela época não se falava em testes unitários :-D )

Abaixo, os passos executados no DOSBOX:

1) montar uma unidade de disco X apontando para a pasta (real) onde estão o FoxBASE (pasta disk01) e o código fonte (pasta Foxbase/fisica)
 
MOUNT X c:\teste_fox
 
2) entrar na unidade X:
 
X:
  
3) definir o PATH para executar o FOXPLUS de dentro da pasta 
 
SET PATH=X:\DISK01
 
4) entrar na pasta onde está o código fonte
 
 CD FOXBASE\FISICA

5) executar o programa Imagens.PRG
 
 FOXPLUS IMAGENS.PRG
 

- Pena eu não ter dados de exemplo para simular o cálculo que o programa faz...


![image](https://user-images.githubusercontent.com/57003640/204927060-718450a1-9132-443d-a1f4-895bed5ebcb3.png)


# Desafio que fica agora

O desafio que fica agora é encontrar alguns exemplos de números para testar e explicar esse programa, e aproveitando também que acabei de fazer um curso de PYTHON, pode ser que eu reescreva o programa em breve... :-)

