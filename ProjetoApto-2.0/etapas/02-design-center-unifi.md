#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 06/08/2024<br>
#Data de atualização: 06/08/2024<br>
#Versão: 0.01

Loja Oficial da Ubiquiti Unifi no Brasil: https://br.store.ui.com/<br>
Canal Oficial da Ubiquiti Unifi no YouTUBE: https://www.youtube.com/UBNTBR<br>
Comunidade Oficial da Ubiquiti Unifi no Facebook: https://www.facebook.com/groups/ubnt.unifi.br<br>
Comunidade Oficial da Ubiquiti Unifi no LinkedIn: https://www.linkedin.com/groups/12135007/

Site Oficial da Ubiquiti Unifi: https://ui.com/<br>
Central de Ajuda da Ubiquiti Unifi: https://help.ui.com/hc/en-us<br>
Especificações Técnicas da Ubiquiti Unifi: https://techspecs.ui.com/

Soluções de Sites para Criação de Planta Baixa On-Line<br>
Floor Planner: https://floorplanner.com/demo<br>
Floor Plan Creator: https://floorplancreator.net/plan/demo<br>
Smart Draw: https://app.smartdraw.com/<br>
Planner 5d: https://planner5d.com/editor

[![Unifi Design Center](http://img.youtube.com/vi/k/0.jpg)]( "Unifi Design Center")

Link da vídeo aula: 

#00_ Criando uma conta na Ubiquiti ID-SSO (Single sign-on)<br>
```bash
#OBSERVAÇÃO: a comunidade do Ubiquiti Unifi recomenda utilizar o navegador Google Chrome para a 
#configuração e administração do Unifi Network ou Design Center devido a compatibilidade do Java 
#e recursos integrados no sistema que funciona perfeitamente nesse navegador.

#OBSERVAÇÃO IMPORTANTE: não recomendo utilizar o recurso do Google Chrome de Tradução, muitas 
#vezes esses recursos traduzem o termo técnico ou gera problemas no site.

#OBSERVAÇÃO IMPORTANTE: A partir de 22 de julho, a autenticação multifator será obrigatória para 
#todas as contas Ubiquiti. Essa mudança é um passo significativo em nosso compromisso de garantir 
#o mais alto nível de segurança e proteção de dados. A Ubiquiti Unifi recomenda usar o UI Verify
#como um método de autenticação de um clique diretamente do seu dispositivo móvel, mas também 
#oferecemos suporte a vários outros métodos.

Acesse o site: https://account.ui.com
	Caso não tenha uma conta clique em: Don't have an account? Create one.

Criando uma conta no: UI Account
	Username: seu_nome_de_usuario
	Email: seu_email
	Password: sua_senha (OBSERVAÇÃO: mínimo de 12 caracteres)
	Confirm Password: sua_senha
	Yes: By creating this account
	Yes: Register to receive newsletters
	<Create Account>
```

#01_ Criando o seu primeiro projeto no Design Center Unifi<br>
```bash
Acesse o site: https://design.ui.com/

#OBSERVAÇÃO: por padrão do Design Center sempre inicia com o Wizard de um projeto básico
#da Ubiquiti Unifi, esse projeto é apenas uma referência de como utilizar o site.

#OBSERVAÇÃO IMPORTANTE: caso ainda não esteja autenticado no Design Center, no canto 
#superior direito tem o ícone de Login, clique nele primeiro e faça o Login no ID-SSO da
#Ubiquiti para começar a utilizar o Design Center.
```

#02_ Configurações Básicas do Design Center Unifi antes de criar o seu primeiro projeto<br>
```bash
No canto superior direito existe dois ícones: o primeiro é o Design Center Wizard o segundo
inicia um novo projeto padrão em branco, recomendo utilizar a segunda opção.

Na tela de: Add New Project (Adicionar um novo Projeto) preencha os campos abaixo:
	Project Name (Nome do Projeto): Digite um nome para o seu projeto: Apto (por exemplo)
	Building Location (Localização do Edifício): Digite a localização do seu projeto (SP-Brazil)
	Building Type (Tipo de Construção): Selecione o Tipo de Construção (Home - Casa - Apto)
	Building Size (Tamanho da Construção): Digite o tamanho da construção em Metros Quadrados Total
		Largura: 6,14m x Comprimento: 8,51m - Total: (Arredondado) 51mt2
	Users (Usuários): Total de usuários na rede ou dispositivos que vão acessar a Internet/Wi-Fi
	Product Preference (Preferência do Produto): você pode selecionar: Value (Valor) ou Performance
	(Desempenho)
<Create>

#OBSERVAÇÃO: por padrão o Design Center fornece um projeto simples de uma Planta Baixa para iniciar
#o uso da ferramenta, recomendo remover essa planta baixa e fazer o upload da planta do projeto.

No canto superior direito temos o ícone: Settings (Configurações), clique em: Remove (Remover) depois:
Confirm (Confirmar).

Na tela de: Create Your Floor Plan (Crie sua Planta Baixa) você tem duas opções:
	Upload Plan (Carregar Planta Baixa): recomendado quando você tem a planta baixa do projeto
		Suporte para as extensões: PNG, JPG ou PDF.
	Use Drawing Tool (Utilizar a Ferramenta de Desenho): recomendado quando você não tem a planta
	baixa do projeto.

Clique na opção: Upload Plan e selecione o arquivo de Planta Baixa do seu Projeto
No campo Name (Nome): digite o nome da planta baixa do projeto e clique em: <Confirm>

Após fazer o Upload da Planta Baixa para o Design Center duas configurações básicas são
importantes para iniciar o seu projeto.
	Primeira: Reference Line Length (Comprimento da Linha de Referência)
	Segunda.: Ceiling Height (Altura do Teto ou Pé Direito, padrão 2,70m = 2.7 ou 3m = 3)

#OBSERVAÇÃO IMPORTANTE: utilize como base de referência de linha por exemplo uma Porta ou um
#Cômodo, faça uma medição preliminar e depois configura o seu projeto, nesse exemplo recomendo
#utilizar a largura de uma Porta Padrão Interna (70cm = 0.7) ou Porta de Entrada (80cm = 0.8),
#desconsiderando o Batente (Guarnição) que geralmente é de: 10cm Interna e 15cm Externa com
#espessura máxima de 4,5cm, caso você tenha a medida externa de Largura ou Comprimento também
#é indicado usar como referência.
	Reference Line Length: 6.14m
	Ceiling Height: 2.7m
	<Save>

#DICA: NA HORA DE FAZER A LINHA DE REFERÊNCIA NÃO UTILIZAR O RECURSO DE ZOOM DO NAVEGADOR,
#TIVE PROBLEMA COM ESSA OPÇÃO NA HORA DE FAZER A LINHA DE REFERÊNCIA.

#OBSERVAÇÃO IMPORTANTE: mesmo fazendo a referência da linha muitas vezes é necessário fazer
#alguns ajustes na opção de configuração para que a: Scale (Escala) de conversão de Metros
#para Pixel seja a mais próxima possível, se estiver usando Porta Interna recomendo mudar o
#valor para: 0.6m que resolveu os problemas de escala do projeto, ficando mais próximo do real.

Para finalizar as configurações básicas no canto superior direito tem o ícone de: Preferences,
nessa opção temos:
	Language: infelizmente não está disponível essa opção para o Português do Brasil
	Measurement Units (Unidades de medida): Meters (Metros)
	WiFi Coverage Color Scheme (Esquema de cores de cobertura WiFi): Heat Map (Mapa de calor)
```