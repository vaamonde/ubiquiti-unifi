#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 10/02/2024<br>
#Data de atualização: 22/02/2024<br>
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

#03_ Configuração do suporte ao SNMP V1/2 e Acesso Remoto via SSH<br>

	Na tela do Unifi OS clique no Dream Machine Pro (vaamonde)
		Settings
			Advanced
				SNMP Monitoring
					SNMP Version 1 & 2 (Enable)
					Community String: apto
				Device Authentication
					Username: SEU_USUÁRIO
					Password: SUA_SENHA
			<Apply Changes>
	
		UniFi Devices
			Clicar em: Sala
				Settings
					Manage
						SNMP (Enable)
							Location: Sala
							Contact: Vaamonde
				<Apply Changes>

			Clicar em: Quarto
				Settings
					Manage
						SNMP (Enable)
							Location: Quarto
							Contact: Vaamonde
				<Apply Changes>

			Clicar em: USW-Apto
				Settings
					Advanced
						SNMP (Enable)
							Location: Rack
							Contact: Vaamonde
				<Apply Changes>

#04_ Testando a conexão via SSH e o monitoramento via SNMP no GNU/Linux<br>

	#pingando os dispositivos na rede
	ping 172.16.1.254	(Dream Machine / Gateway)
	ping 172.16.1.50	(Switch PoE)
	ping 172.16.1.60	(Access Point U6-Pro)
	ping 172.16.1.61	(Access Point U6-Mesh)

	#atualizando e instalando o software nmap no GNU/Linux
	sudo apt update && sudo apt install nmap snmp

	#verificando as portas abertas em cada dispositivo na rede
	#opção do comando nmap: -p- (port ranges all)
	sudo nmap -p- 172.16.1.254	(Dream Machine / Gateway)
	sudo nmap 172.16.1.50		(Switch PoE)
	sudo nmap -p- 172.16.1.60	(Access Point U6-Pro)
	sudo nmap -p- 172.16.1.61	(Access Point U6-Mesh)

	#acessando via SSH os dispositivos da Ubiquiti Unifi no GNU/Linux
	ssh vaamonde@172.16.1.50	(Switch PoE)
		Are you sure you want to continue connecting (yes/no/[fingerprint])?yes
			help
			info
			exit
	ssh vaamonde@172.16.1.60	(Access Point U6-Pro)
		Are you sure you want to continue connecting (yes/no/[fingerprint])?yes
			help
			info
			exit
	ssh vaamonde@172.16.1.61	(Access Point U6-Mesh)
		Are you sure you want to continue connecting (yes/no/[fingerprint])?yes
			help
			info
			exit
	
	#verificando as informações de SNMP dos dispositivos da Ubiquiti Unifi no GNU/Linux
	#opção do comando snmpwalk: -c (set the community string), -v (specifies SNMP version to use)
	snmpwalk -c apto -v 2c 172.16.1.50
	snmpwalk -c apto -v 2c 172.16.1.60
	snmpwalk -c apto -v 2c 172.16.1.61

	#verificando as informações de OID da MIB dos dispositivos  da Ubiquiti Unifi no GNU/Linux
	#opção do comando snmpwalk: -c (set the community string), -v (specifies SNMP version to use)
	snmpwalk -c apto -v 2c 172.16.1.60 1.3.6.1.2.1.1.1.0	(Modelo e Versão do OS)
	snmpwalk -c apto -v 2c 172.16.1.60 1.3.6.1.2.1.4.22.1.2	(Endereço MAC Address Conectados)
	snmpwalk -c apto -v 2c 172.16.1.60 1.3.6.1.2.1.4.20.1.1	(Endereço IPv4 Configurado no AP)