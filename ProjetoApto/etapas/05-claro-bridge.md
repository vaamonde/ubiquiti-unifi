#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 30/01/2024<br>
#Data de atualização: 07/02/2024<br>
#Versão: 0.02

Loja Oficial da Ubiquiti Unifi no Brasil: https://br.store.ui.com/<br>
Canal Oficial da Ubiquiti Unifi no YouTUBE: https://www.youtube.com/UBNTBR<br>
Comunidade Oficial da Ubiquiti Unifi no Facebook: https://www.facebook.com/groups/ubnt.unifi.br<br>
Comunidade Oficial da Ubiquiti Unifi no LinkedIn: https://www.linkedin.com/groups/12135007/

Site Oficial da Ubiquiti Unifi: https://ui.com/<br>
Central de Ajuda da Ubiquiti Unifi: https://help.ui.com/hc/en-us<br>
Especificações Técnicas da Ubiquiti Unifi: https://techspecs.ui.com/

Guia de início rápido do UDM-Pro: http://dl-origin.ubnt.com/qsg/UDM-Pro/UDM-Pro_EN.html<br>
Datasheet do UDM-Pro: https://dl.ui.com/qig/udm-pro/#index

#00_ Resetando o Modem da Claro-NET CGA4233<br>

	Link de referência dos modens da Claro: https://configuraraparelhos.claro.com.br/tipos-de-aparelhos/internet-fixa

	Link de referência Modem CGA4233: https://configuraraparelhos.claro.com.br/technicolor/cga4233

	Link de referência de Usuário e Senha: https://configuraraparelhos.claro.com.br/technicolor/cga4233/primeiros-passos/onde-localizar-as-informacoes-de-acesso-do-modem-wi-fi

	Procedimento para Resetar (Restaurar) as Configurações de Fábrica
		a) aperte e segure o botão reset, que está na parte traseira do aparelho utilizando um
		palito de dente ou material fino, por 30 segundos até que todas as luzes do modem se 
		apaguem e seja feito a reinicialização do equipamento;
		b) após a restauração, as senhas voltarão a ser as mesmas da etiqueta de identificação 
		que está debaixo do modem.

#01_ Acessando o Modem da Claro-NET com as Configurações Padrão de Fábrica<br>

	Link de referência Reset Modem: https://configuraraparelhos.claro.com.br/technicolor/cga4233/funcoes-basicas/como-acessar-as-configuracoes-do-modem-wi-fi-pelo-computador

	Endereço IPv4 padrão do Modem: 192.168.0.1
	Usuário padrão do Modem: CLARO_?????? (SEIS ÚLTIMOS DÍGITOS DO MAC ADDRESS)
	Senha padrão do Modem: ETIQUETA NA PARTE DE BAIXO DO MODEM

	APÓS O RESET SERÁ NECESSÁRIO FAZER AS CONFIGURAÇÕES BÁSICAS DO MODEM NOVAMENTE.

#02_ Configurando o Modem Claro-NET em Modo Bridge<br>

	Link de referência Modo Bridge: https://configuraraparelhos.claro.com.br/technicolor/cga4233/funcoes-avancadas/como-configurar-o-modem-wi-fi-no-modo-bridge

	a) após acessar as configurações do Modem clique em: Configurações Avançadas;
	b) após habilitar as opções avançadas clique no ícone do: Menu no canto superior esquerdo;
	c) no Menu, clique em: Rede para expandir as opções e clique em: Configurações Básicas;
	d) em: Tipo de Conexão WAN mude de: Roteador para: Bridged (Em Ponte) clique em: OK;

	OBSERVAÇÃO IMPORTANTE: AUTOMATICAMENTE O MODEM SERÁ RECONFIGURADO E REINICIADO APÓS 1 (UM) MINUTO, 
	AS CONFIGURAÇÕES ANTERIORES NÃO SERÃO PERDIDAS, SOMENTE A REDE SEM-FIO SERÁ DESATIVADA E OS RECURSOS
	EXISTENTES NO ROTEADOR SERÃO DESATIVADOS.

	OBSERVAÇÃO: o IP para acessar as configurações foi alterado para 192.168.100.1/24. Caso não seja 
	possível através desse IP, é necessário configurar o IP da placa de rede nas configurações do 
	seu computador. Também é possível restaurar o modem Wi-Fi para as configurações de fábrica para 
	acessar pelo IP padrão.
