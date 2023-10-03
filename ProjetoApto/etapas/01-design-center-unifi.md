#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 03/10/2023<br>
#Data de atualização: 03/10/2023<br>
#Versão: 0.01

Loja Oficial da Ubiquiti Unifi no Brasil: https://br.store.ui.com/<br>
Canal Oficial da Ubiquiti Unifi no YouTUBE: https://www.youtube.com/UBNTBR<br>
Comunidade Oficial da Ubiquiti Unifi no Facebook: https://www.facebook.com/groups/ubnt.unifi.br

Site Oficial da Ubiquiti Unifi: https://ui.com/<br>
Central de Ajuda da Ubiquiti Unifi: https://help.ui.com/hc/en-us<br>
Especificações Técnicas da Ubiquiti Unifi: https://techspecs.ui.com/

#00_ Criando uma conta na Ubiquiti ID-SSO (Single sign-on)<br>

	OBSERVAÇÃO: a comunidade do Ubiquiti Unifi recomenda utilizar o navegador Google Chrome para a 
	configuração e administração do Unifi Network ou Design Center devido a compatibilidade do Java 
	e recursos integrados no sistema que funciona perfeitamente nesse navegador.

	OBSERVAÇÃO IMPORTANTE: não recomendo utilizar o recurso do Google Chrome de Tradução, muitas 
	vezes esses recursos traduzem o termo técnico ou gera problemas no site.
	
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

#01_ Criando o seu primeiro projeto no Design Center Unifi<br>

	Acesse o site: https://design.ui.com/

	OBSERVAÇÃO: por padrão do Design Center sempre inicia com o Wizard de um projeto básico
	da Ubiquiti Unifi, esse projeto é apenas uma referência de como utilizar o site.

	OBSERVAÇÃO IMPORTANTE: caso ainda não esteja autenticado no Design Center, no canto 
	superior direito tem o ícone de Login, clique nele primeiro e faça o Login no ID-SSO da
	Ubiquiti para começar a utilizar o Design Center.

#02_ Configurações Básicas do Design Center Unifi antes de criar o seu primeiro projeto<br>

	No canto superior direito existe dois ícones: o primeiro é o Design Center Wizard o segundo
	inicia um projeto padrão em branco, recomendo utilizar a segunda opção.

	Na tela de: Create Your Floor Plan você tem duas opções:
		Upload Plan (Carregar Planta Baixa): recomendado quando você tem a planta baixa do projeto
		Use Drawing Tool (Utilizar a Ferramente de Desenho): recomendado quando você não tem a planta
		baixa do projeto.

	Clique na opção: Upload Plan selecione o arquivo de Planta Baixa do Projeto
	No campo Name: digite o nome do projeto e clique em: <Confirm>

	Após fazer o Upload da Planta Baixa para o Design Center duas configurações básicas são
	importantes para iniciar o seu projeto.
		Primeira: Reference Line Length (Comprimento da linha de referência)
		Segunda.: Ceiling Height (Altura do teto ou Pé Direito padrão 2,70m = 2.7)

	OBSERVAÇÃO IMPORTANTE: utilize como base de referência de linha por exemplo uma Porta ou um
	Comodo, faça uma medição preliminar e depois configura o seu projeto, nesse exemplo recomendo
	utilizar a largura de uma Porta Padrão Interna (70cm = 0.7) ou Porta de Entrada (80cm = 0.8)
		Reference Line Length: 0.7m
		Ceiling Height: 2.7m
		<Save>
	
	OBSERVAÇÃO IMPORTANTE: mesmo fazendo a referência da linha muitas vezes é necessário fazer
	alguns ajustes na opção de configuração para que a: Scale (Escala) de conversão de metros
	para pixel seja a mais próxima possível.

	Para finalizar as configurações básicas no canto superior direito tem o ícone de: Preferences,
	nessa opções temos:
		Language: infelizmente não tem essa opção de mudar
		Measurement Units (Unidades de medida): Meters (Metros)
		WiFi Coverage Color Scheme (Esquema de cores de cobertura WiFi): Heat Map (Mapa de calor)

#03_ Criando as Paredes Internas e Externas no Design Center Unifi<br>

	OBSERVAÇÃO IMPORTANTE: por padrão utilizamos espessuras para Paredes Externas de 20cm e para
	Paredes Internas de 15cm, sem levar em consideração paredes com revestimento de azulejos ou
	cerâmico.

	Na barra de ferramentas do Canto Superior Direito no terceiro ícone: Draw Wall tem duas opções:
		Room (Sala)..: recomendado quando você inicia o projeto de sala, quartos, banheiro, etc.
		Wall (Parede): recomendado quando você está modificando um cômodo ou fazendo acertos na planta.

	Na opção: Room (Sala) temos três opções:
		Outer Wall (Parede Externa).: paredes mais grossa com maior resistência de sinal 12/20dB
			Materiais: Tijolo, Concreto e outros materiais pesados.
		Inner Wall (Parede Interna).: paredes mais fina com menor resistência de sinal 3/6,5dB
			Materiais: Madeira, Painéis e outras divisórias leves.
		Divider (Divisórias)........: paredes finas com menor resistência de sinal 2,5/7,0dB
			Materiais: Cisalhamento (Parecido com Draywall mais é de Madeira, muito utilizado nas
			construções de casas americanas com Lã de Vidro e matérias térmicos), vidro e outros 
			materiais finos.

	OBSERVAÇÃO IMPORTANTE: no Brasil e muito comum as construções serem de Alvenaria (Tijolo, Blocos,
	Concreto, Ferro, etc... unidos por Argamassa), nesse cenário: Fábricas, Indústria, Comércio, Casas, 
	etc..., segue esse padrão convencional de construção, em Apartamentos temos a opção de: Alvenaria 
	Estrutural onde todas as paredes fazem parte da estrutura do prédio diminuindo o uso de Pilares e 
	Vigas na edificação.

	Clicando em cima de cada linha do desenho das paredes temos quatro ícones:
		Delete (Deletar), Change Wall Type (Mudar o tipo de parede), Break Point (Ponto de Interrupção)
		e Change Wall Type (Mudar o tipo de parede para seguir um novo caminho)

#04_ Adicionando os Dispositivos no Design Center Unifi<br>

	Na canto superior direito temos a opção de: Device contendo todos os dispositivos suportados
	pelo Design Center da Unifi para a elaboração do projeto, você pode pesquisar o dispositivo
	ou selecionar com base na categoria.

	OBSERVAÇÃO IMPORTANTE: geralmente em projeto de Rede Sem-Fio ou de Cabeamento Estruturado com base
	na Planta Baixa do Projeto determinamos o Centro de Massa ou Cortes Transversal e Longitudinal,
	com isso temos uma referência de dimensão com base na Largura e Comprimento total do projeto a ser
	executado, exemplo: Galpão de 500m2 (10m de Frente x 50m de Fundo): com isso usamos a fórmula:
		Base ou Largura (b).....: b=10m/2 | b=5m
		Altura ou Profundida (h): h=50m/2 | h=25m

	Adicionando o Access Point: U6-Pro
		Devices
			WiFi
				U6 Professional
	
	Adicionando o Access Point: U6-Mesh
		Devices
			WiFi
				U6 Mesh
	
	Adicionando o Dream Machine Pro: UDM-Pro
		Devices
			WiFi
				Dream Machine Professional
	
	Adicionando o Switch PoE 16 Portas: USW-16-PoE
		Devices
			Switching
				Standard 16 PoE

#05_ Visualizando a Potência de Sinal dos Access Point no Design Center Unifi<br>

	No canto superior direito temos o ícone: Coverage (Cobertura) nele temos as opções de:
		Hover (Fluturar): padrão do Design Center, conforme passa o mouse no Dispositivo ele mostra seu status
		WiFi (Sem-Fio): apresenta o Mapa Térmico dos dispositivos Sem-Fio instalado
			WiFi Band (Banda Sem-Fio): 2,4Ghz, 5Ghz e 6Ghz 
		Camera (CFTV): mostra a posição do angulo de visão das câmeras 
		Off (Desligar): desativa todas as opções

#06_ Conectando os Dispositivos no Design Center Unifi<br>

	Existe duas formas de conectar os dispositivos no Design Center Unifi, nas opções de ícones
	no canto superior direito temos:
		Draw Cable (Desenhar Cabo): nesse cenário você seleciona o tipo de cabo e faz o desenho
		Auto Cable (Cabo Automático): nesse cenário você seleciona o dispositivo que será conectado