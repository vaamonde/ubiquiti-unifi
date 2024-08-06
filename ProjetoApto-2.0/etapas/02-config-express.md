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

Guia de início rápido do Unifi Express: https://br.store.ui.com/br/pt/pro/category/cloud-gateways-wifi-integrated/products/ux<br>
Datasheet do UDM-Pro: https://techspecs.ui.com/unifi/unifi-cloud-gateways/ux

#00_ Criando uma conta na Ubiquiti ID-SSO (Single sign-on)<br>
```bash
#OBSERVAÇÃO: a comunidade do Ubiquiti Unifi recomenda utilizar o navegador Google Chrome para a 
#configuração e administração do Unifi Network ou Design Center, devido a compatibilidade do Java 
#e recursos integrados no sistema que funciona perfeitamente nesse navegador.

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

#01_ Configurações Básicas de Rede do Unifi Express e Switch PoE<br>
```bash
Endereço IPv4 padrão Dream Machine: 192.168.1.1
	Recursos habilitados por padrão: DHCP Server, Compartilhamento de Internet e
	DNS Cache/Resolver para navegação.

Endereço IPv4 padrão Switch PoE 8 Portas: 192.168.1.20

Teste de conexão: Terminal (Atalho Ctrl + Alt + T)

#opção do comando route: -n (shows numeric addresses)
route -n
ping 192.168.1.1
ping 192.168.1.20
```

#02_ Configurando o Unifi Express via Navegador ou Celular<br>
```bash
#DICA IMPORTANTE: você pode configurar o Unifi Express via Navegador ou Celular, nesse caso
#utilizando o aplicativo: Unifi Network para as plataformas Android ou Apple

Google Play - Unifi: https://play.google.com/store/apps/details?id=com.ubnt.easyunifi&hl=pt_BR&gl=US
Apple Store - Unifi: https://apps.apple.com/br/app/unifi/id1057750338

#OBSERVAÇÃO IMPORTANTE: para utilizar o aplicativo Unifi no seu celular o recurso de Bluetooth
#precisa está habilitado para localizar o Unifi Express na sua rede, caso o seu Unifi Express
#ainda não foi configurado, o aplicativo do Unifi localiza o equipamento e já começa o processo 
#de configuração padrão.

No seu navegador Google Chrome acesse a URL: https://192.168.1.1 ou https://unifi

#OBSERVAÇÃO IMPORTANTE: não habilite o recurso de tradução do Inglês para o Português do Google
#Chrome, geralmente acontece alguns problemas na configuração ou tradução do termo técnico.

<Setup Unifi Express>
	Unifi Unifi Express Setup
		Console Name: Vaamonde
		(YES) Agree to the Terms of Service and End User License Agreement
		<Next>
	Sign in to UI.com
		Email or Username: seu_usuário_ui
		Password: sua_senha_ui
		<Next>
	No Backup Files Found
		<Continue>
	Update Schedule
		Frequency: Daily (Default)
		Hour: 3 AM (Default)
		<Next>
	Configuration
		(Enable) Send Diagnostics & Performance Information
		<Next>
	Starting Speedtests
		Test Results
			Adjust your speeds to what your ISP has promised you
				Download (Mbps): sua_velocidade_de_download
				Upload (Mbps): sua_velocidade_de_upload
		<Next>

#OBSERVAÇÃO IMPORTANTE: após a primeira configuração do Unifi Express será feito o Update
#do Unifi Network, esse processo demora bastante dependendo do seu Link de Internet.
```

#03_ Acessando o Console do Unifi Express via Navegador ou Celular<br>
```bash
No seu navegador Google Chrome acesse a URL: https://192.168.1.1 ou https://unifi

Unifi OS
	Email or username: seu_usuário_ui
	Password: sua_senha_ui
	(Yes) Remember my credentials
<Sign in>
```

#04_ Adotando o Switch PoE no Console do Unifi Express<br>
```bash
#OBSERVAÇÃO IMPORTANTE: no primeiro login no console do Unifi, o Unifi Express já localiza
#o Switch PoE que está conectado e já recomenda adicionar na Topologia, fazendo o processo
#de Adotar o equipamento no Console do Unifi Express (Recomendado sempre)

Ready to Add: USW 8 PoE
	<Add>

#OBSERVAÇÃO IMPORTANTE: após adotar o Switch PoE no Console do Unifi Express é iniciado o 
#processo de atualização do Firmware no Switch, esse procedimento demora bastante dependendo
#da velocidade do link de internet que você está utilizando.
```

#05_ Conhecendo o Console do Unifi Express<br>
```bash
Dashboard.....: Informações detalhas da topologia e configurações básicas;
Topology......: Informações da topologia física e lógica dos equipamentos Unifi;
Unifi Devices.: Informações dos dispositivos adotados no Unifi;
Client Devices: Informações dos clientes conectados nos dispositivos Unifi;
Statistics....: Informações de estáticas de uso dos recursos do Unifi;
Wifi Insights.: Informações detalhadas da rede sem-fio do Unifi;
System Logs...: Informações detalhadas dos Logs do Sistema Unifi;
Notifications.: Informações de notificações do Unifi;
Settings......: Configurações Básicas e Avançadas do Unifi.
```

#06_ Configurando as opções básicas do Unifi Express<br>
```bash
Settings
	System
		Network Notification: Off (Default)
		Territory: Brazil (Enable)
		Language: English (Default)
		Time Format: 24 Hours (Enable)
		Legacy Interface: Off (Default)
		Theme: Dark (Enable)
		Wifiman: On (Default)
	<Apply Changes>
```

#07_ Teste de conexão com a Internet em um Desktop conectado na Rede<br>
```bash
Teste de conexão: Terminal (Atalho Ctrl + Alt + T)
	ping 8.8.8.8
	ping google.com

Navegador: https://youtube.com/boraparapratica
```