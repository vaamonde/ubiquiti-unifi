#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 06/08/2024<br>
#Data de atualização: 14/08/2024<br>
#Versão: 0.03

Loja Oficial da Ubiquiti Unifi no Brasil: https://br.store.ui.com/<br>
Canal Oficial da Ubiquiti Unifi no YouTUBE: https://www.youtube.com/UBNTBR<br>
Comunidade Oficial da Ubiquiti Unifi no Facebook: https://www.facebook.com/groups/ubnt.unifi.br<br>
Comunidade Oficial da Ubiquiti Unifi no LinkedIn: https://www.linkedin.com/groups/12135007/

Site Oficial da Ubiquiti Unifi: https://ui.com/<br>
Central de Ajuda da Ubiquiti Unifi: https://help.ui.com/hc/en-us<br>
Especificações Técnicas da Ubiquiti Unifi: https://techspecs.ui.com/

Guia de início rápido do Unifi Express: https://br.store.ui.com/br/pt/pro/category/cloud-gateways-wifi-integrated/products/ux<br>
Datasheet do UDM-Pro: https://techspecs.ui.com/unifi/unifi-cloud-gateways/ux

[![Config Unifi Express](http://img.youtube.com/vi/AhiSnHJPrYo/0.jpg)](https://www.youtube.com/watch?v=AhiSnHJPrYo "Config Unifi Express")

Link da vídeo aula: https://www.youtube.com/watch?v=AhiSnHJPrYo

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
Endereço IPv4 padrão Unifi Express: 192.168.1.1

Recursos habilitados por padrão: 
A) DHCP Server, 
B) Compartilhamento de Internet,
C) DNS Cache/Resolver para navegação.

Endereço IPv4 padrão Switch Lite PoE 8 Portas: 192.168.1.23

Teste de conexão: Terminal (Atalho Ctrl + Alt + T)

#opção do comando route: -n (shows numeric addresses)
ifconfig enp0s3
route -n
resolvectl
ping 192.168.1.1
ping 192.168.1.23
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

<Set Up the Unifi Express>
	Unifi Unifi Express Setup
		Console Name: unifiexpress
		(YES) Agree to the Terms of Service and End User License Agreement
		<Next>
	Sign in to UI.com
		Email or Username: seu_usuário_ui
		Password: sua_senha_ui
		<Next>
	Confirm Login in the UI Verify Mobile App
		<UI Mobile>
	Restore Console with a Backup Files
		<Continue Without a Backup>
	Wi-Fi Setup
		Wi-Fi Name (SSID): seu_ssid_wifi
		Password: sua_senha_wifi
		<Finish>

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

Unifi Network
  Unifi Devices
    Ready to Add: USW-Lite-8-PoE
      <Click to Adopt>

#OBSERVAÇÃO IMPORTANTE: após adotar o Switch PoE no Console do Unifi Express é iniciado o 
#processo de atualização do Firmware no Switch, esse procedimento demora bastante dependendo
#da velocidade do link de internet que você está utilizando.
```

#05_ Conhecendo o Console do Unifi Express<br>
```bash
A) Dashboard.....: Informações detalhas da topologia e configurações básicas;
B) Topology......: Informações da topologia física e lógica dos equipamentos Unifi;
C) Unifi Devices.: Informações dos dispositivos adotados no Unifi;
D) Client Devices: Informações dos clientes conectados nos dispositivos Unifi;
E) Statistics....: Informações de estáticas de uso dos recursos do Unifi;
F) Wifi Insights.: Informações detalhadas da rede sem-fio do Unifi;
G) System Logs...: Informações detalhadas dos Logs do Sistema Unifi;
H) Notifications.: Informações de notificações do Unifi;
I) Settings......: Configurações Básicas e Avançadas do Unifi.
```

#06_ Teste de conexão com a Internet em um Desktop conectado na Rede<br>
```bash
Teste de conexão: Terminal (Atalho Ctrl + Alt + T)
	ping 8.8.8.8
	ping google.com

Navegador: https://youtube.com/boraparapratica
```