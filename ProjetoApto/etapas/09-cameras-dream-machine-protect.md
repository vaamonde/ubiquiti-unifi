#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 29/05/2024<br>
#Data de atualização: 19/06/2024<br>
#Versão: 0.03

Loja Oficial da Ubiquiti Unifi no Brasil: https://br.store.ui.com/<br>
Canal Oficial da Ubiquiti Unifi no YouTUBE: https://www.youtube.com/UBNTBR<br>
Comunidade Oficial da Ubiquiti Unifi no Facebook: https://www.facebook.com/groups/ubnt.unifi.br

Site Oficial da Ubiquiti Unifi: https://ui.com/<br>
Central de Ajuda da Ubiquiti Unifi: https://help.ui.com/hc/en-us<br>
Especificações Técnicas da Ubiquiti Unifi: https://techspecs.ui.com/

Guia de início rápido do UDM-Pro: http://dl-origin.ubnt.com/qsg/UDM-Pro/UDM-Pro_EN.html<br>
Datasheet do UDM-Pro: https://dl.ui.com/qig/udm-pro/#index

Download WiFiman Desktop: https://ui.com/download/app/wifiman-desktop<br>
Download WiFiman Mobile: https://play.google.com/store/apps/details?id=com.ubnt.usurvey&hl=pt_BR&gl=US<br>
Download SIMET Mobile: https://simet.nic.br/sobresimetmobile.html

Calculadora de Capacidade Unifi: https://www.ui.com/cloud-gateways/resource-calculator<br>
Requisitos de armazenamento e compatibilidade: https://help.ui.com/hc/en-us/articles/360037340954-UniFi-Storage-Requirements-and-Compatibility<br>
Storage e Hard Disk Unifi: https://store.ui.com/us/en?category=accessories-storage<br>
Calculadora de Armazenamento: https://zufall.co/protect-calculator/<br>
Calculadora de Wi-Fi Unifi: https://wifi.ui.com/

#00_ Acessando o Dream Machine Pro com a sua conta da Ubiquiti ID-SSO (Single sign-on)<br>

	No seu navegador Google Chrome acesse a URL: https://172.16.1.254 ou https://unifi
	
	OBSERVAÇÃO IMPORTANTE: não habilite o recurso de tradução do Inglês para o Português do Google
	Chrome, geralmente acontece alguns problemas na configuração ou tradução do termo técnico.

#01_ Verificando os Dispositivos Ubiquiti Unifi conectados no Switch PoE<br
	
	OBSERVAÇÃO: para facilitar as configurações iniciais das Câmeras, recomendo está
	conectado via Cabo de Rede no seu Switch PoE e fazer os escaneamento da rede, depois
	que configurar as Câmeras ai sim podemos testar as conexões.

	Terminal: (Atalho Ctrl + Alt + T)
		OBSERVAÇÃO IMPORTANTE: caso você não tenha instalado o comando Nmap no seu GNU/Linux
		digite o comando: sudo apt update && sudo apt install nmap <Enter>
		sudo nmap 172.16.1.0/24
	
	Unifi OS
		Network
			Unifi Devices
				OBSERVAÇÃO IMPORTANTE: Deve aparecer as Câmeras G5 nos dispositivos conectados
			Topology
				OBSERVAÇÃO IMPORTANTE: Deve aparecer as Câmeras G5 nos dispositivos conectados
			Ports
				OBSERVAÇÃO IMPORTANTE: Deve aparecer as Câmeras G5 nos dispositivos conectados

#02_ Adotando as Câmeras no Unifi OS Protect<br>

	OBSERVAÇÃO IMPORTANTE: no primeiro login no console do Unifi, o Dream Machine já localiza
	os Câmeras G5 que está conectado no seu Switch ou Dream Machine e já recomenda adicionar 
	na Topologia, fazendo o processo de Adotar o equipamento no Console do Dream Machine.

	Unifi OS
		Protect
			<Adopt Devices>
				G5 Bullet <Click to Adopt>
					Introducing Smart Detection
					<Enable Smart Detection>
				G5 Bullet <Click to Adopt>
					Introducing Smart Detection
					<Enable Smart Detection>
	
	OBSERVAÇÃO IMPORTANTE: após adotar as câmeras G5 Bullet no Unifi Protect o processo de 
	atualizar o Firmware é iniciado, esse processo demora um pouco.

#03_ Configurando o Endereço IPv4 Estática nas Câmeras G5 Bullet

	OBSERVAÇÃO IMPORTANTE: igual nos Access Point, as câmeras G5 por padrão são configuradas
	com endereço IPv4 Dinâmico (DHCP), é recomendado sempre setar um Endereço IPv4 Estático
	e se possível utilizar uma VLAN (Virtual-LAN) independente para o gerenciamento e controle
	das câmeras (com isso aumenta a segurança e desempenho na rede).

	Unifi OS
		Network
			Devices

#03_ Instalando o Unifi Protect no Android ou iPhone (Apple)<br>

	Instalação no Android
		Play Store
			Pesquisar apps: Unifi Protect
				<Instalar>