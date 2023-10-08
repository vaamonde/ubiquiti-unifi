#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 03/10/2023<br>
#Data de atualização: 08/10/2023<br>
#Versão: 0.02

Loja Oficial da Ubiquiti Unifi no Brasil: https://br.store.ui.com/<br>
Canal Oficial da Ubiquiti Unifi no YouTUBE: https://www.youtube.com/UBNTBR<br>
Comunidade Oficial da Ubiquiti Unifi no Facebook: https://www.facebook.com/groups/ubnt.unifi.br

Site Oficial da Ubiquiti Unifi: https://ui.com/<br>
Central de Ajuda da Ubiquiti Unifi: https://help.ui.com/hc/en-us<br>
Especificações Técnicas da Ubiquiti Unifi: https://techspecs.ui.com/

Soluções de Sites para Criação de Planta Baixa On-Line<br>
Floor Planner: https://floorplanner.com/demo<br>
Floor Plan Creator: https://floorplancreator.net/plan/demo<br>
Smart Draw: https://app.smartdraw.com/<br>
Planner 5d: https://planner5d.com/editor

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

	OBSERVAÇÃO: por padrão o Design Center fornece um projeto simples de uma Planta Baixa para iniciar
	o uso da ferramenta, recomendo remover essa planta baixa e fazer o upload da planta do projeto.

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

	OBSERVAÇÃO IMPORTANTE: utilize como base de referência de linha por exemplo uma Porta ou um
	Cômodo, faça uma medição preliminar e depois configura o seu projeto, nesse exemplo recomendo
	utilizar a largura de uma Porta Padrão Interna (70cm = 0.7) ou Porta de Entrada (80cm = 0.8),
	desconsiderando o Batente (Guarnição) que geralmente é de: 10cm Interna e 15cm Externa com
	espessura máxima de 4,5cm, caso você tenha a medida externa de Largura ou Comprimento também
	é indicado usar como referência.
		Reference Line Length: 6.14m
		Ceiling Height: 2.7m
		<Save>
	
	DICA: NA HORA DE FAZER A LINHA DE REFERÊNCIA NÃO UTILIZAR O RECURSO DE ZOOM DO NAVEGADOR,
	TIVE PROBLEMA COM ESSA OPÇÃO NA HORA DE FAZER A LINHA DE REFERÊNCIA.

	OBSERVAÇÃO IMPORTANTE: mesmo fazendo a referência da linha muitas vezes é necessário fazer
	alguns ajustes na opção de configuração para que a: Scale (Escala) de conversão de Metros
	para Pixel seja a mais próxima possível, se estiver usando Porta Interna recomendo mudar o
	valor para: 0.6m que resolveu os problemas de escala do projeto, ficando mais próximo do real.

	Para finalizar as configurações básicas no canto superior direito tem o ícone de: Preferences,
	nessa opção temos:
		Language: infelizmente não está disponível essa opção para o Português do Brasil
		Measurement Units (Unidades de medida): Meters (Metros)
		WiFi Coverage Color Scheme (Esquema de cores de cobertura WiFi): Heat Map (Mapa de calor)

#03_ Criando as Paredes Internas e Externas no Design Center Unifi<br>

	OBSERVAÇÃO IMPORTANTE: por padrão utilizamos espessuras para Paredes Externas de 20cm e para
	Paredes Internas de 15cm, sem levar em consideração paredes com revestimento de azulejos, 
	cerâmicos ou porcelanato.

	LEMBRE-SE: Rede Sem-Fio (Wireless ou Wi-Fi) tem problemas de: Reflexão, Refração, Espalhamento,
	Difração, Absorvição, Atenuação, Interferências Eletromagnéticas, Interferências de Sinal, etc...

	Na barra de ferramentas do Canto Superior Direito no terceiro ícone: Draw Wall tem duas opções:
		Room (Sala)..: recomendado quando você inicia o projeto de sala, quartos, banheiro, etc.
		Wall (Parede): recomendado quando você está modificando um cômodo ou fazendo acertos na planta.

	Na opção: Room (Sala) temos três opções:
		Outer Wall (Parede Externa).: paredes mais grossa com maior absorvição/atenuação de sinal 12/20dB
			Materiais: Tijolo, Concreto e outros materiais pesados.
		Inner Wall (Parede Interna).: paredes mais fina com menor absorvição/atenuação de sinal 3/6,5dB
			Materiais: Madeira, Painéis e outras divisórias leves.
		Divider (Divisórias)........: paredes finas com menor absorvição/atenuação de sinal 2,5/7,0dB
			Materiais: Cisalhamento (Parecido com Draywall mais é de Madeira, muito utilizado nas
			construções de casas americanas com Lã de Vidro e materiais térmicos), vidro e outros 
			materiais finos.

	OBSERVAÇÃO IMPORTANTE: no Brasil e muito comum as construções serem de Alvenaria (Tijolo, Blocos,
	Concreto, Ferro, etc... unidos por Argamassa), nesse cenário: Fábricas, Indústria, Comércio, Casas, 
	etc..., segue esse padrão convencional de construção, em Apartamentos temos a opção de: Alvenaria 
	Estrutural onde todas as paredes fazem parte da estrutura do prédio diminuindo o uso de Pilares e 
	Vigas (Concreto) na edificação mais mantendo a estrutura de Laje.

	OBSERVAÇÃO IMPORTANTE: PARA REMOVER O RECURSO DE PAREDE OU QUALQUER OUTRO RECURSO QUANDO SELECIONADO
	PRESSIONE: ESC

	Clicando em cima de cada linha do desenho das paredes temos quatro ícones:
		Delete (Deletar), Change Wall Type (Mudar o tipo de parede), Break Point (Ponto de Interrupção)
		e Change Wall Type (Mudar o tipo de parede para seguir um novo caminho)

	OBSERVAÇÃO IMPORTANTE: QUANTO MAIS DETALHADO O SEU PROJETO DE INFRAESTRUTURA DE PAREDES, PORTAS,
	JANELAS, ETC... MELHOR VAI SER O RESULTADO FINAL, LEMBRANDO QUE SEMPRE É INDICADO FAZER UMA
	VALIDAÇÃO/AMOSTRAGEM NO LOCAL PARA IDENTIFICAR POSSÍVEIS PROBLEMAS NO PROJETO.

#04_ Adicionando as Rotas de Cabos no Design Center Unifi<br>

	No canto superior direito temos a opção de: Draw Cable Route (Desenhar a Rota dos Cabos), recomendo
	desenhar o caminho básico dos cabos no seu projeto, lembrando que o Design Center não é uma solução
	100% confiável para Projetos de Cabeamento Estruturado, muitas vezes a distância projetada não é a
	real do projeto.

	OBSERVAÇÃO IMPORTANTE: no Unifi Design Center ele se baseia na adição do Rack Unifi, depois e feito
	a criação das Rotas de Cabos e adicionado as conexões de cabos, indico essa parte do projeto para
	redes corporativas, redes residenciais muitas vezes não existe essa necessidade.

	Para adicionar os conectores no Unifi Design Center no ícone de: Devices vá em: Accessories no final
	da lista tem as opções:
		Cable Connections for 2 People (04 Ports): área de trabalho para 02 pessoas com 04 pontos de rede;
		Cable Connections for 4 People (08 Ports): área de trabalho para 04 pessoas com 08 pontos de rede;
		Cable Connections for 6 People (12 Ports): área de trabalho para 06 pessoas com 12 pontos de rede;
		Cable Connections for 8 People (16 Ports): área de trabalho para 08 pessoas com 16 pontos de rede.
	
	OBSERVAÇÃO IMPORTANTE: em projeto de cabeamento estrutura trabalhamos com 02 pontos de rede para
	cada colaborar na área de trabalho, sendo 01 para Dados e 01 para Voz (Telefonia).

#05_ Adicionando os Dispositivos no Design Center Unifi<br>

	No canto superior direito temos a opção de: Device contendo todos os dispositivos suportados
	pelo Design Center da Unifi para a elaboração do projeto, você pode pesquisar o dispositivo
	ou selecionar com base na categoria.

	OBSERVAÇÃO IMPORTANTE: geralmente em projeto de Rede Sem-Fio ou de Cabeamento Estruturado com base
	na Planta Baixa do Projeto determinamos o Centro de Massa ou Cortes Transversal e Longitudinal,
	com isso temos uma referência de dimensão com base na Largura e Comprimento total do projeto a ser
	executado, exemplo: Galpão de 500m2 (10m de Frente x 50m de Fundo): com isso usamos a fórmula:
		Base ou Largura (b).....: b=10m/2 | b=5m
		Altura ou Profundida (h): h=50m/2 | h=25m
			m2=5m*25m
			m2=125m2 (total de área foi dividida em 4 partes iguais de 125m2, a interseção das áreas
			é o ponto central do projeto)

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

#06_ Conectando os Dispositivos no Design Center Unifi<br>

	Existe duas formas de conectar os dispositivos no Design Center Unifi, nas opções de ícones
	no canto superior direito temos:
		Draw Cable (Desenhar Cabo): nesse cenário você seleciona o tipo de cabo e faz o desenho
		Auto Cable (Cabo Automático): nesse cenário você seleciona o dispositivo que será conectado

	OBSERVAÇÃO: recomendo utilizar a opção Auto Cable que é mais fácil fazer as conexões com os
	dispositivos de rede dentro da sua topologia.

	Na opção de Draw Cable temos as opções:
		Existing Ethernet Cable (Cabo Ethernet Existente): nesse cenário você utiliza os cabos de rede
		existente no seu projeto de cabeamento estruturado, independente se é Cat56e ou Cat6.
		UniFi Indoor Cable CMP (Cabo interno UniFi CMP): utilizar cabo Ethernet interno da UniFi Cat6 
		para suas implantações Unifi de alta velocidade.
		UniFi Indoor Cable CMR (Cabo interno UniFi CMR): utilizar cabo Ethernet interno da UniFi Cat6 
		para suas implantações Unifi de alta velocidade.

	OBSERVAÇÃO IMPORTANTE: Flamabilidade de cabos LAN no Brasil, pode ser classificada em quatro tipos: 
		CMX: é uma classificação com uso restrito que requer algum tipo de proteção quanto à propagação 
		de chamas, gases tóxicos e fumaça;
		CM: é recomendado para uso em geral indicados para aplicação vertical em tubulações com muita 
		ocupação, com pouca proteção contra incêndio, instalado em tubulações de grande quantidade de 
		cabos e sem fluxo de ar forçado em um mesmo ambiente;
		CMR: é utilizado em instalações de subida (“riser”), onde o cabo ultrapassa mais de um pavimento 
		em instalação tipo shafts ou poços sem fluxo de ar forçado;
		CMP: são indicados para aplicação horizontal, em locais confinados (entre pisos, forro, calhas, 
		etc.), com ou sem fluxo de ar forçado, ou em locais com condições de propagação de fogo similares 
		a estas;
		LSZH: cabo de baixa emissão de fumaça e zero halógeno, ou seja, não toxica, indicado para instalações 
		de grande afluência de público garantindo a segurança das pessoas.

#07_ Visualizando a Potência de Sinal dos Access Point no Design Center Unifi<br>

	No canto superior direito temos o ícone: Coverage (Cobertura) nele temos as opções de:
		Hover (Flutuar): padrão do Design Center, conforme passa o mouse no Dispositivo ele mostra seu status
		WiFi (Sem-Fio): apresenta o Mapa Térmico dos dispositivos Sem-Fio instalado
			WiFi Band (Banda Sem-Fio): 2,4Ghz, 5Ghz e 6Ghz 
		Camera (CFTV - Circuito Fechado de TV Câmeras): mostra a posição do angulo de visão das câmeras 
		Off (Desligar): desativa todas as opções

	OBSERVAÇÃO IMPORTANTE: no Design Center as versões de Access Point U6-Pro e U6-Mesh não tem suporte
	a tecnologia de 6Ghz, essa tecnologia está disponível nos Access Point: U6 Enterprise e U6 In-Wall.