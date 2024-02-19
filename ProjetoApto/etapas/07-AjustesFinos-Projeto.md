#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 10/02/2024<br>
#Data de atualização: 19/02/2024<br>
#Versão: 0.02

Loja Oficial da Ubiquiti Unifi no Brasil: https://br.store.ui.com/<br>
Canal Oficial da Ubiquiti Unifi no YouTUBE: https://www.youtube.com/UBNTBR<br>
Comunidade Oficial da Ubiquiti Unifi no Facebook: https://www.facebook.com/groups/ubnt.unifi.br

Site Oficial da Ubiquiti Unifi: https://ui.com/<br>
Central de Ajuda da Ubiquiti Unifi: https://help.ui.com/hc/en-us<br>
Especificações Técnicas da Ubiquiti Unifi: https://techspecs.ui.com/

Guia de início rápido do UDM-Pro: http://dl-origin.ubnt.com/qsg/UDM-Pro/UDM-Pro_EN.html<br>
Datasheet do UDM-Pro: https://dl.ui.com/qig/udm-pro/#index

Download WiFiman Desktop: https://ui.com/download/app/wifiman-desktop<br>
Download WiFiman Mobile: https://play.google.com/store/apps/details?id=com.ubnt.usurvey&hl=pt_BR&gl=US
Download SIMET Mobile: https://simet.nic.br/sobresimetmobile.html

#00_ Acessando o Dream Machine Pro com a sua conta da Ubiquiti ID-SSO (Single sign-on)<br>

	No seu navegador Google Chrome acesse a URL: https://172.16.1.254 ou https://unifi
	
	OBSERVAÇÃO IMPORTANTE: não habilite o recurso de tradução do Inglês para o Português do Google
	Chrome, geralmente acontece alguns problemas na configuração ou tradução do termo técnico.

#01_ Habilitando o suporte ao IPv6 no Link de Internet e na Rede LAN<br>

	Na tela do Unifi OS clique no Dream Machine Pro (vaamonde)
		Settings
			Internet
				Clicar em: claro-net
					Advanced: Manual (Enable)
						IPv4 Configuration
							IPv4 Connection: DHCPv4
						IPv6 Configuration
							IPv6 Connection: DHCPv6 (Enable)
							Prefix Delegation Size: 64 
				<Apply>
			Networks
				Clicar em: apto
					IPv6
						Interface Type: Prefix Delegation (Enable)
						Prefix Delegation Interface: claro-net
					<Apply>
	
#02_ Alterando a Potência e Canais das Redes Sem-Fio 2.4Ghz e 5.0Ghz<br>

	Na tela do Unifi OS clique no Dream Machine Pro (vaamonde)
		UniFi Devices
			Clicar em: Sala
				Settings
					Radios
						2.4 Ghz
							Channel Width: 20 Mhz
							Channel: 6
							Transmit Power: Medium
						5.0 Ghz
							Channel Width: 40 Mhz
							Channel: 44
							Transmit Power: High
						Band Steering
							Prefer 5.0 GHz
				<Apply Changes>
			Clicar em: Quarto
				Settings
					Radios
						2.4 Ghz
							Channel Width: 20 Mhz
							Channel: 11
							Transmit Power: Medium
						5.0 Ghz
							Channel Width: 40 Mhz
							Channel: 36
							Transmit Power: High
						Band Steering
							Prefer 5.0 GHz
				<Apply Changes>

#03_ 