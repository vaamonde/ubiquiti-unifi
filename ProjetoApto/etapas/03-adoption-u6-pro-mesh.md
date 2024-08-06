#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 03/10/2023<br>
#Data de atualização: 03/08/2024<br>
#Versão: 0.03

Loja Oficial da Ubiquiti Unifi no Brasil: https://br.store.ui.com/<br>
Canal Oficial da Ubiquiti Unifi no YouTUBE: https://www.youtube.com/UBNTBR<br>
Comunidade Oficial da Ubiquiti Unifi no Facebook: https://www.facebook.com/groups/ubnt.unifi.br<br>
Comunidade Oficial da Ubiquiti Unifi no LinkedIn: https://www.linkedin.com/groups/12135007/

Site Oficial da Ubiquiti Unifi: https://ui.com/<br>
Central de Ajuda da Ubiquiti Unifi: https://help.ui.com/hc/en-us<br>
Especificações Técnicas da Ubiquiti Unifi: https://techspecs.ui.com/

Guia de início rápido do UDM-Pro: http://dl-origin.ubnt.com/qsg/UDM-Pro/UDM-Pro_EN.html<br>
Datasheet do UDM-Pro: https://dl.ui.com/qig/udm-pro/#index

#00_ Acessando o Dream Machine Pro com a sua conta da Ubiquiti ID-SSO (Single sign-on)<br>
```bash
No seu navegador Google Chrome acesse a URL: https://192.168.1.1 ou https://unifi

#OBSERVAÇÃO IMPORTANTE: não habilite o recurso de tradução do Inglês para o Português do Google
#Chrome, geralmente acontece alguns problemas na configuração ou tradução do termo técnico.
```

#01_ Fazendo o Reset via Hardware Físico do Access Point UAP-nanoHD<br>
```bash
#OBERVAÇÃO IMPORTANTE: para Resetar qualquer equipamento da Ubiquiti Unifi é necessário
#que o mesmo esteja ligado numa Porta PoE ou utilizar o Ejetor PoE. Também é recomendado
#que o Reset seja feito via Software utilizando a sua Controladora e Desadotando o AP ou
#Dispositivo da sua Topologia.

O Unifi Network possui 03 (três) formas de Reset:
	Reset via UniFi Network (Software)
	Reset via SSH (Secure Shell - Remoto)
	Reset Físico (Hardware)

#Nesse exemplo vou utilizar um Reset Físico (Hardware): O método mais comum é fazer o reset 
#físico do UAP através de um botão localizado na parte traseira do equipamento. Usando um 
#clipe ou ferramenta de ponta fina é possível pressionar o botão de reset, o que fará o UAP 
#restaurar suas configurações de fábrica. Esse método é a última opção de reset quando o 
#administrador perdeu a senha de gerência da controladora e/ou a senha de acesso remoto ao 
#equipamento que é gerada aleatoriamente na adoção.

Mais informações leia o How-To: https://medium.com/ubntbr/como-resetar-um-access-point-unifi-4f455abbe9c4
```

#02_ Verificando os Dispositivos Ubiquiti Unifi conectados no Switch PoE<br
```bash	
#OBSERVAÇÃO: para facilitar as configurações iniciais dos Access Point, recomendo está
#conectado via Cabo de Rede no seu Switch PoE e fazer os escaneamento da rede, depois
#que configurar a Rede Sem-Fio ai sim podemos testar as conexões.

Terminal: (Atalho Ctrl + Alt + T)

#OBSERVAÇÃO IMPORTANTE: caso você não tenha instalado o comando Nmap no seu GNU/Linux
#digite o comando: sudo apt update && sudo apt install nmap <Enter>
sudo nmap 192.168.1.0/24
```

#03_ Adotando os Access Point U6 Pro e Mesh no Console do Dream Machine<br>
```bash
#OBSERVAÇÃO IMPORTANTE: no primeiro login no console do Unifi, o Dream Machine já localiza
#os Access Point que está conectado no seu Switch ou Dream Machine e já recomenda adicionar 
#na Topologia, fazendo o processo de Adotar o equipamento no Console do Dream Machine.

Ready to Add: (3) Network devices
	<Add>

#OBSERVAÇÃO IMPORTANTE: após adotar os Access Point no Console do Dream Machine é iniciado
#o processo de atualização do Firmware nos Access Point, esse procedimento demora bastante 
#dependendo da velocidade do link de internet que você está utilizando.
```

#04_ Desadotando (Forget - Esquecer) Access Point UAP-nanoHD no Dream Machine<br>
```bash
Devices
	UAP-nanoHD
		Settings
			Manage
				Forget
				<Confirm>
```