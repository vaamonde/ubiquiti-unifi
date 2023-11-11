#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 03/10/2023<br>
#Data de atualização: 11/11/2023<br>
#Versão: 0.02

Loja Oficial da Ubiquiti Unifi no Brasil: https://br.store.ui.com/<br>
Canal Oficial da Ubiquiti Unifi no YouTUBE: https://www.youtube.com/UBNTBR<br>
Comunidade Oficial da Ubiquiti Unifi no Facebook: https://www.facebook.com/groups/ubnt.unifi.br

Site Oficial da Ubiquiti Unifi: https://ui.com/<br>
Central de Ajuda da Ubiquiti Unifi: https://help.ui.com/hc/en-us<br>
Especificações Técnicas da Ubiquiti Unifi: https://techspecs.ui.com/

Guia de início rápido do UDM-Pro: http://dl-origin.ubnt.com/qsg/UDM-Pro/UDM-Pro_EN.html<br>
Datasheet do UDM-Pro: https://dl.ui.com/qig/udm-pro/#index

#00_ Acessando o Dream Machine Pro com a sua conta da Ubiquiti ID-SSO (Single sign-on)<br>

	No seu navegador Google Chrome acesse a URL: https://192.168.1.1 ou https://unifi
	
	OBSERVAÇÃO IMPORTANTE: não habilite o recurso de tradução do Inglês para o Português do Google
	Chrome, geralmente acontece alguns problemas na configuração ou tradução do termo técnico.

#01_ Alterando as configurações de Rede do Dream Machine Pro<br>

	OBSERVAÇÃO IMPORTANTE: por padrão as configurações básicas de rede do Dream Machine Pro e 
	todos os equipamentos de rede da Ubiquiti Unifi está na Faixa de IPv4 Classe C começando
	com os endereços IP: 192.168.1.0/24, recomendo alterar os endereços IP andes de começar a
	configurar os equipamentos na rede.

	Na tela do Unifi OS clique no Dream Machine Pro (vaamonde)
		Settings
			Networks
				Networks
					Clique em: Default
						Default
							Network name: apto
							Router: Vaamonde (Default Dream Machine Pro)
							Gateway IP/Subnet: Auto-Scale Network (Disable)
								Host Address: 172.16.1.254
								Netmask: 24 (249 usable host)
						Advanced Configuration: Manual (Enable)
							Network Type: Standard (Default)
							Content Filtering: None (Default)
							IGMP Snooping: Disable (Default)
							Multicast DNS: Enable (Default)
						DHCP
							DHCP Mode: DHCP Server (Default)
							DHCP Range:
								Start: 172.16.1.100
								Stop: 172.17.1.200
							DHCP Guarding: Disable (Default)
							DHCP Service Management: (Default)
						IPv6
							IPv6 Interface Type: Nome (Default)
					<Apply Changes>

	OBSERVAÇÃO IMPORTANTE: após a mudança do endereço de rede do Dream Machine Pro, faça
	um release do DHCP Client para obter os novos endereços IPv4 da faixa alterada no UDM,
	digite no terminal ou CMD os comandos de verificação de rede para testar os novos IP's. 

	No seu navegador Google Chrome acesse a URL: https://172.16.1.254 ou https://unifi

	Na tela do Unifi OS clique no Dream Machine Pro (vaamonde)
		Settings
			Networks
				Networks
					Global Network Settings
						Multicast DNS: Enable apto (Default)
						IGMP Snooping: Disable apto (Default)
					Global Switch Settings
						DHCP Snooping: Enable (Default)
						Jumbo Frames: Disable (Default)
						Flow Control: Disable (Default)
						Spanning Tree: RSTP (Default)
						802.1X Control: Disable (Default)
						Switch Exclusions: Default

#02_ Alterando as configurações de Rede do Switch PoE<br>

	No Dashboard do Dream Machine Pro clique em: Topology
		Topology
			Clique em: USW-16-PoE
				Settings
					Name: uws-apto
				Network
					Configure IP: Static IP (Enable)
					IP Address: 172.16.1.50
					Preferred DNS: 172.17.1.254
					Subnet Mask: 255.255.255.0
					Alternative DNS: Default
					Gateway: 172.16.1.254
					DNS Sufix: apto.intra
				<Apply Changes>

#03_ Alterando as configurações da Acesso a Internet Cabeada no Dream Machine Pro<br>

	Settings
		Internet
			Clique em: Default (WAN1)
				Name: claro-net
			<Apply Changes>

			claro-net: Port 9 (GE)
			Backup (WAN2) Port 10 (SFP+) (Default)
			Automatic Speed Test: Enable
			Schedule:
				Daily: Enable
				Hour: 12:00
			<Apply Changes>