# foxbase-nostalgia
Primeira linguagem de programação...

Outro dia eu li um post no Linkedin pedindo pra comentar qual foi a sua primeira linguagem de programação e eu lembrei que tinha salvo em casa ainda alguns arquivos antigos (PRG) do tempo do Ensino Médio/Técnico em Processamento de Dados (ano 1999), onde aprendemos a programar com a lingagem FoxBASE+ (depois virou Foxpro), se não me engano é muito semelhante ao Clipper...

Enfim, neste repositório está um pouco desta nostalgia... :-)

Em parceria com o professor de Física fizemos um trabalho sobre calcular distâncias de imagens em reflexos...

Para baixar o foxbase e executar:

https://winworldpc.com/product/foxbase/plus-210

Descompactar o arquivo disk01.img com o 7.zip

Para executar o foxplus.exe, pode ser usado o DOSBox

https://www.dosbox.com/



# Hello world...

Em uma tela que vc tinha apenas 80 colunas e 24 linhas, esse era o comando para escrever um texto na lina 1 e coluna 10:

![image](https://user-images.githubusercontent.com/57003640/204542219-a75b2bb3-4a85-4768-ba48-092d6f8851e1.png)




# Trabalho de Física

Consegui executar o programa do trabalho da disciplina de Física citado acima, passos executados no DOSBOX:

 - montar uma unidade de disco X apontando para a pasta (real) onde estão o FoxBASE (pasta disk01) e o código fonte (pasta Foxbase/fisica)
 
MOUNT X c:\teste_fox
 
 - entrar na unidade X:
 
X:
  
 - definir o PATH para executar o FOXPLUS de dentro da pasta 
 
SET PATH=X:\DISK01
 
 - entrar na pasta onde está o código fonte
 
 CD FOXBASE\FISICA

- executar o programa Imagens.PRG
 
 FOXPLUS IMAGENS.PRG
 
 
![image](https://user-images.githubusercontent.com/57003640/204927060-718450a1-9132-443d-a1f4-895bed5ebcb3.png)

