#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 01/05/2024<br>
#Data de atualização: 11/05/2024<br>
#Versão: 0.05

Loja Oficial da Ubiquiti Unifi no Brasil: https://br.store.ui.com/<br>
Canal Oficial da Ubiquiti Unifi no YouTUBE: https://www.youtube.com/UBNTBR<br>
Comunidade Oficial da Ubiquiti Unifi no Facebook: https://www.facebook.com/groups/ubnt.unifi.br<br>
Comunidade Oficial da Ubiquiti Unifi no LinkedIn: https://www.linkedin.com/groups/12135007/

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

#01_ Adicionando o HD (Hard Disk) WD (Western Digital) Purple 1TB no Dream Machine Pro<br>

	Unifi OS
		Storage
		OBSERVAÇÃO: Life Span (vida útil) do HDD (Hard Drive Disk)
		Mais informações acesse: https://www.enterprisestorageforum.com/hardware/life-expectancy-of-a-drive/
		Reformat
			<Reformat>

#02_ Habilitando o suporte ao Unifi Protect no Dream Machine Pro<br>

	Unifi OS
		Protect
		OBSERVAÇÃO: APÓS ADICIONAR O HDD NO DREAM MACHINE O SUPORTE AO UNIFI PROTECT JÁ ESTÁ
		DISPONÍVEL PARA USO, SEM NECESSIDADE DE INSTALAÇÃO.

#03_ Informações técnicas importantes do Storage e HD no Dream Machine<br>

	a) Life Span (vida útil) do HDD (Hard Drive Disk): Na maioria dos casos, a vida útil de um disco
	rígido depende principalmente de sua capacidade. A principal razão pela qual os usuários de 
	computador substituem os discos rígidos não é porque eles morreram. Em vez disso, é porque o 
	usuário precisa de mais espaço.
	
	b) ATA ACS-3: O conjunto de comandos ATA/ATAPI - 3 (ACS-3) padrão especifica o conjunto de comandos
	que os sistemas host usam para acessar dispositivos de armazenamento.
	
	c) SATA 3.1: O SATA 3.1 (julho de 2011) vem com suporte melhorado ao mSATA e ao recurso TRIM.
	
	d) Bad Sector Count: Estes são setores nos quais a unidade não conseguiu ler o setor e os dados
	desse setor provavelmente serão perdidos. Embora tempos de leitura lentos possam indicar problemas,
	a contagem de setores defeituosos é um indicador claro de que a unidade apresenta danos físicos
	às superfícies do disco.
	
	e) HDD CMR: No CMR, cada trilha é escrita separadamente das trilhas vizinhas adjacentes. Nesta
	abordagem, há interação mínima entre as faixas. Os setores de dados podem ser gravados e reescritos repetidamente. Além disso, a localização do LBA (Endereço de Bloco Lógico) é absoluta e imóvel, 
	após formatação.

	f) HDD RV: Proteção Contra Ruído e Vibração: Projetadas para operar isoladas, as unidades para
	desktop geralmente oferecem pouca ou nenhuma proteção contra ruído e vibração presentes em um
	sistema de várias unidades. Os discos rígidos WD Red incluem sensores de Rotation Vibration
	(RV) que antecipam e atuam proativamente contra perturbações causadas pela maior vibração