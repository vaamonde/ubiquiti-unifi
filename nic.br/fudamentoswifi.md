#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 21/11/2023<br>
#Data de atualização: 21/11/2023<br>
#Versão: 0.01

Curso Nic.br de Fundamentos de Rede Sem-Fio (Wireless - Wi-Fi) Ubiquiti Unifi

Primeiro dia: 21/11/2023



Segundo dia: 22/11/2023
Resumo: #01_ Especto de Radiofrequência;
        #02_ Potência Absoluta e Relativa
        #03_ Propagação de Onda

Terceiro dia: 23/11/2023
Resumo: #01_ Antenas e Wi-Fi
		#02_ Evolução do Wi-Fi (4 (legado), 5 (não é mais o padrão de mercado) e 6 (atual))
		#03_ OFDMA=6 OFDM=5 (segunda grande evolução) = Latência
		#04_ Modulação de Sinal: BPSK (ser pior indexe/técnica de modulação - não é ruim)
								(mais tolerante a ruído interferências - capacidade de operar em ambiente
								com muitas)
		#05_ Indexes de Modulação (TOPO): Wi-fi=4 64-QAM | Wi-Fi=5 256-QAM | Wi-Fi=6 1024-QAM
		(Link para consulta: https://mcsindex.com/)
		(Link para Wi-Fi7: https://mcsindex.net/)
		#06_ DRS (Dynamic Rate Selection) SNR - Tabela MCS (TH +- 50%)
		#07_ Banda de 2.4Ghz (Canais Disponíveis) - Canais Sobrepostos;
		#08_ Banda de 5.0Ghz (Agregar Canais) mais fácil fazer o reuso de canais (tem mais canais);
		#09_ Wi-fi-6 (não pode operar em Outdoor) - 
		#10_ CSMA-CA (carrier-sense multiple access with collision avoidance) - Rádio Half-Duplex
				LBT = Listen Before Talk (escutar o meio) para toda RF (lógica)
				CCA = (Dentro do Wi-Fi) Clear Channel Assessment (camada física)
				NAV = Network Allocation Vector (camada de enlace) - tempos menores (QoS - ToS)
				Cada cliente tem uma célula Wi-Fi: 
		#11_ Problema de Nó Escondido: (a célula do cliente muda o tempo todo);
				Problema: AP - todos os dispositivo (todo os SM são AP): CSMA-CA Falhar
				Aqui que acontece a colisão do meio, retransmissão (ACK - Flag - Timeout), % de Retransmissão
				Métrica TS: Taxa de Retransmissão: 20% (nota de corte: -70dBm - Ruim) - Wireshark
					Wireshark: Primeiro campo FC: 16 bits
													Type (gerencia=0, controle=1 ou dados=2)
													Retry (taxa de retransmissão)
													To DS
													From DS
				Diminuir a potência do AP e adicionar mais AP's por área de cobertura;
				Taxa de Retransmissão é "Falha de Projeto"
										Diminuir a Potência TX do AP
										Desativas as Taxas Baixas
										Adicionar APs (diferentes canais)
										Fazer Reuso de Canais Sem Sobreposição
										Manter os AP's Estrategicamente
										Sala de Aula (Não usar LR - usar o Lite e Pro)
										Hospital e Hotel (Estudar usar LR)

										Projeto Legado (área de cobertura)
										Projeto Por Capacidade (células pequenas, cliente com TP alto)
				Área de Sobreposição (isso não deixa fazer )
				Não pode existir sobreposição de canais, pois preciso ter sobreposição de células;
				Boas Práticas em Projeto de Rede Sem-Fio (Verticalidade de Projetos)
				Tecnologia LoRaWAN (“Long Range” (longo alcance) com WAN (Wide Area Network – rede de longo alcance)) - focado em Agro.

				Roaming () Mobilidade: ficar preso em um única célula
					para isso acontecer precisar 

				SSID's (SService Set Identifiers)
					Grau de sobreposição: 10/20% 
					Cuidado com área de sombra;
					Utilizar Canais diferentes
					RTS (Request to Send)
					CTS (Clear to Send) - Subtype - FLAG: 12
						Latência - Overhead (monitorar as taxas de transmissão e retransmissão)
				Beacon (quadros de controle da propagação das células que ele gerencia 10 quadros por segundos)
				O cliente sempre decide em qual AP ele vai ser conectar, o cliente é 100%
				responsável pela escolha do AP que ele vai se conectar.
					SSID (Nome Lógico da WLAN)	(indicado apenas um nome, mais fácil)
					Basic SSID BSSID (AP MAC & WLAN - Nomenclatura), preciso identificar para AP's na Topologia
					Extended SSID ESSID (Todos os AP's da WLAN) soma de todos os AP (áre de cobertura)
					Basic Service Area BSA (Célula do AP)
					RSSI (Receive Signal Strength Indicator)
				Caixa preta-ruim (Stick Client) - cache do tolerado do SSID,
				Cliente suportar o protocolo 802.11K (dataset do fabricante)
				Mesh (residencial - proprietário - usar o mesmo canal - Rx Rate 800Mbps) não é Roaming
					Toda a repetição de Mesh cria uma Macro-Célula, cuidado com o Nó Escondido
				Bridge (repetição sem via WDS)
				Private Pre-Share Keys - para VLAN associar para a VLAN por senha
				NPS (Radius) - autenticação para o lado cliente
				--------------------------------------------------------------------------------------
		#12_ Quadros Beacon & Probing
			Scan Passivo VS Ativo
				Probe Request
				Probe Response
			Roaming & Reassociação
				Roaming: sobreposição de célula, cliente faz reaming utilizando métricas proprietárias
				Autenticação: Pessoal ou Empresarial
			802.11r & Unifi Fast Roaming
				VoIP não utilizar o recurso 802.1x (RADIUS), devido a quantidade de mensagens trocadas
				entre os AP's. 
		#13_ Segurança
			WPA-Personal (2|3)
			WPA-Enterprise (2|3)
			Ataque Wireless OTA
			Ataque Man-in-the Middle
			AP's Rogue (redes no mesmo nome dos seus vizinhos)
			WPA Pairwise Shared Key (PSK)
			EAP 
				Hierarquia de Chaves
					Nível 1: PMK = Gerada pela Senha/PSK
					Nível 2: PTK = 
					Chaves GTK (Chaves de Grupos)
					Autenticador (A) <-----> Suplicante (S)
			PPSK - Private Pairwise Shared Kay (Proprietário)
				Rede 	VLAN 	Password
				SSID	 10		123@senha	(associar uma política) (trabalhar com profile)