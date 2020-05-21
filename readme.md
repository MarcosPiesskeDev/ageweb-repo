# Agenda de Contatos Web - Projeto Estácio de Sá

## Contexto:
Esta é a configuração dos back-end e front-end do projeto Agenda de Contatos Web, onde possui as configurações de CRUD do projeto, juntamente com a view sendo feita com JSP. Utilizando a tecnologia Spring-Boot do Java.

## Requisitos:

* Java 1.8 +
* Maven Apache 3.6.3 + (Instalação módulo: 1)
* MySQL Community Server - GPL version: 8.0.2 (Instalação módulo: 2)
* 2GB Memória RAM  

##Sumário

1. Modulação;
<br>1.1. Soluções;
<br>1.2. Funcionalidades.

2. Instalação e configuração;
<br>2.1 Apache Maven;
<br>2.2 Banco de dados.

3. Execução do projeto.

4. Abreviações e significados



## Modulo 1:

### 1.1. Soluções tomadas no desenvolvimento do projeto
* Utilizou-se a versão 1.8 do Java por ser uma das versões mais otimizadas com recursos que são muito utilizados nos dias de hoje;
* Com a ferramenta Spring-Boot permite um avanço maior no projeto, com o uso das dependências de servlets, conseguiu-se desenvolver o front-end do projeto juntamente com o back-end, permitindo que o projeto se torne mais dinâmico;
* Fazendo uso do banco de dados MySQL, por ser uma das plataformas mais comumente aceitas por muitos desenvolvedores, visando assim, uma melhor manutenção em casos de erros ou bugs que posssam afetar os dados.
* Os arquivos de visualização (front-end) encontram-se uma pasta chamada "view" que estão localizadas no caminho: ```src/main/webapp/WEB-INF/```;
* Para a questão de estilo, foi utilizado o bootstrap. 

### 1.2. Sobre a Agenda de Contatos Web: contando suas funcionalidades  
Este projeto tem o papel de executar uma agenda de contatos na qual você poderá: excluir, alterar, adicionar e buscar os contatos dentro da sua conta, que pode ser cadastrada na tela inicial no item "Registrar", no canto superior esquerdo. Ao cadastrar um contato, você terá o acesso pelo seu 'username' e senha, permitindo-lhe, então, fazer as alterações desejadas na agenda.
<br>OBS.: Com a nova Lei Geral de Proteção de Dados (LGPD), deve-se tratar esses dados de forma consciente; e assim fazendo com o que o dono legal dos dados possa ter autonomia dos mesmos, ou seja, caso o usuário queira excluir algum dado, é possível. Nesse projeto, o foco seria nas configurações de senhas, pois muitas pessoas utilizam a mesma senha para plataformas distintas. Então poderá ser solicitada a remoção do usuário caso deseje; para solucionar este problema, foi feito este caminho: ```http://localhost:8070/user```, onde é possível fazer a manipulação dos usuários registrados, como alteração no nome do usuário e senha, saber quantos contatos possui registrados; e deletar caso haja a necessidade.
<br>OBS2.: Não é recomendado alterar o nome do usuário para o mesmo já existente, isso poderá causar problemas na hora de fazer alterações, pois o banco de dados trabalha com a integridade dos mesmos (valor único);

## Módulo 2: 

### 2.1. Instalação Apache Maven
1. Deverás instalar o Maven Apache no seu computador. Poderás fazer download neste link: https://maven.apache.org/download.cgi

### 2.1. Configurar o Maven Apache caso não possua (Windows): 

1. Fazer o download do Maven no seu computador;
2. Extrair o arquivo e inserir no diretório de sua preferência (recomendado Disco local C:);
3. Pesquise por "Alterar Variáveis de Ambiente", após encontrar, basta ir em variáveis de ambiente;
4. Criar variável de ambiente chamada: M2_HOME e colocar o caminho de onde foi instalado o Maven. Ex: C:\apache-maven-3.6.3
5. Ir em: Path>Editar(canto superior direito);
6. Adicionar o caminho onde você instalou o maven adicionando o \bin. Ex: C:\apache-maven-3.6.3\bin

### 2.1. Configurar o Maven Apache caso não possua (Linux): 

1. Fazer o download do Maven em seu computador;
2. Extrair o arquivo inserir no diretório de sua preferência;
3. Ir à pasta home do seu Linux e habilitar para vizualizar os arquivos ocultos.
4. Editar o arquivo: .bashrc;
5. No final do arquivo coloque: PATH=$:/diretorio-onde-salvou-o-maven;
6. Salvar o arquivo.

### 2.2. Banco de Dados MySQL Server (Windows)

1. Faça um download do MySQL Server: https://dev.mysql.com/downloads/windows/installer/8.0.html

2. De preferência faça download do arquivo mais leve (24.4 Mb);

3. Escolha a opção "Server Only", para que possamos então instalar o nosso servidor MySQL, assim clicar em "Next";
<br/>3.1. Caso você já tenha o WorkBench instalado, e não ir diretamente à página para escolher. Deverás ir em "Add";
<br/>3.2. Após isso, leia os termos, aceite e clique em "Next";
<br/>3.3. Selecione o MySQL server 8+, e então clique em "Next" (para selecionar, deverás clicar 2x);

4. Após isso, clique em "Execute" para executar o seu servidor MySQL e começar a instalação. Para finalizar clique em "Next"; clicar em "Next" novamente para começarmos a configurar o servidor;

5. Selecione a opção "Standalone MySQL Server/Classic MySQL Replication" e clique em "Next";

6. Em "Config type", selecione: "Development Machine", marque as opções: "TCP/IP", "Open Firewall port for network access". E deixe a "Port Number" configurada com: '3306' e então clique em "Next";

7. Configure a sua senha do 'root' do seu banco de dados (guarde essa senha, pois será necerrário em todos os seus projetos com MySQL) e clique em "Next";

8. É recomendável que use as definições Default para que o projeto funcione sem erros. Marque as opções: 
 <br> ~> "Configure MySQL Server as Windows Service";
 <br> ~> "Start MySQL server at System StartUp"; 
<br>OBS.: Caso não seja marcada esta opção, o MySQL server deverá ser iniciado manualmente, indo na pasta onde foi instalado o MySQL e executar o arquivo "mysql" ou abrindo pelo cmd, acessando a pasta onde está o mesmo, e executando o comando(pelo cmd): ```start mysql```
<br> ~> "Standart System Account"

9. Pressione o botão "Next" e em seguida o botão "Execute";

10. Quando finalizar clique em "Finish";

### 2.2 Configurando banco de dados do projeto
1. Vá em seu menu iniciar e procure por: MySQL 8.0 Command Line Client e execute;
2. Insira a sua senha configurada do seu root e pressione ``Enter``;
3. Vá na pasta do projeto chamada 'sql';
4. Copie o script do arquivo: 'codeSql.sql';
5. Cole em seu MySQL 8.0 Command Line Client e pressione ``Enter``;
6. No arquivo dentro do projeto chamado: 'aplication.properties', que se encontra no caminho: 'src/main/java/resources' e insira a senha em 'password'.


## Módulo 3: 
1. Execute a sua linha de comando (cmd);
2. Dentro do cmd digite: ```cd 'diretório_projeto'``` ex: ```cd D:\My_Documents\Work\projects\estacioproject-master``` e pressione ``Enter``;
3. Digite o comando: ```mvn spring-boot:run``` e pressione ``Enter``
4. Abra o seu navegador e digite o endereço ``localhost:8070`` e pressione ``Enter``.

## Módulo 4:
* <b>CRUD:</b> Create(criar), Request(procurar), Update(alterar) e Delete(excluir);
* <b>Front-End:</b> Parte de visualização do projeto;
* <b>Back-End:</b> Parte onde é realizada a regra de negócio e configurações relacionadas ao desenvolvimento de servidor do projeto;
* <b>Servidor:</b> Considerado um 'super computador', os servidores são computadores altamente desenvolvidos para possuírem uma grande faixa de processamento, onde é considerado na programação a parte responsável por executar o código e fazer a junção dos códigos back-end com front-end, em outros casos, um servidor pode ser visto como: uma casa, ou seja, um lugar para hospedar o seu código ou arquivos do seu website;
* <b>JSP:</b> Java Server Pages, é uma linguagem de script que possui como objetivo soluções de conteúdo dinâmico para páginas da Internet;
* <b>MySQL:</b> Structured Query Language, é uma linguagem de script com soluções de banco de dados;
* <b>WorkBench (WorkBench MySQL):</b> Ferramenta que auxilia o uso do banco de dados, como manipulação de tabelas e seus respectivos bancos;
* <b>Spring-Boot:</b> É um framework para automatizar e facilitar a criação de projetos com Java Web com o uso de APIs e outras ferramentas, assim permitindo um desenvolvimento mais rápido de aplicações e projetos, uma ferramenta muito utilizada por Startups. Para a injeção de dependências e plugins do seu código, pode-se ser utilizado o Maven; 
* <b>Maven:</b> Uma ferramenta flexível permitindo que sejam instalado denpendências(plugins) para fazer com que o projeto se torne mais dinãmico e com maiores funcionalidades, visando a facilidade de manutenção e desenvolvimento do projeto escolhido;
* <b>Apache(Servidor HTTP Apache):</b> É o maior servidor web que existe open source, responsável por disponibilizar recursos que utilizamos em nosso dia-a-dia na web, como: envio de e-mails, compras online, envio e recebimento de mensagens, etc... Neste projeto foi utilizado o Apache Tomcat, que seria o servidor do Apache para desenvolvimento Java, assim sendo permitido o uso do JSP e Servlets com java;
* <b>Open Source:</b> Código disponível gratuitamente para alterar e melhorar o mesmo a partir de contribuições, como vistas no GitHub, ou em quaisquer tipo de tecnologia Git;
* <b>Git: </b> São repositórios online onde servem para manter o seu código em um repositório online, permitindo contribuições para melhor desenvolvimento. Onde, também, é feito o versionamento do seu código;
* <b>CMD:</b> Linha de comando do Windows.