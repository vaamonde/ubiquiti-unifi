#!/bin/bash
# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Data de criação: 06/01/2021
# Data de atualização: 12/09/2021
# Versão: 0.06
# Testado e homologado para a versão do Ubuntu Server 18.04.x LTS x64
# Testado e homologado para a versão do Unifi Controller 6.2.x, MongoDB 3.6.x, OpenJDK e OpenJRE 8.x
#
# O software UniFi Controller que vem com o sistema Ubiquiti UniFi tem uma interface baseada em Web que facilita
# a administração, configuração e gerenciamento dos dispositivos Unifi (Access Point AP, Switch, Router, USG, etc).
# O sistema Unifi e baseado na arquitetura SDN (Software defined networking) que possibilita o gerenciamento 
# centralizado de todos os equipamentos da infraestrutura da rede utilizando o Unifi Controller Localmente ou 
# Remotamente, ou seja, não há necessidade de configurar individualmente cada um dos dispositivos na rede.
#
# Informações que serão solicitadas na configuração via Web do Unifi Controller
# Step 1 of 6:
#   Name Your Controller
#       Controller Name: Vaamonde
#       By selecting this you are agreeing to end user license agreement and the terms of service: ON <Next>
# Step 2 of 6:
#   Sign in with your Ubiquiti Account
#       Username: usuário Id-SSO https://account.ui.com
#       Password: senha usuário ID-SSO <Next>
# Step 3 of 6:
#   UniFi Network Setup
#       Automatically optimize my network: ON
#       Enable Auto Backup: <Next>
# Step 4 of 6:
#   Devices Setup: <Next>
# Step 5 of 6:
#   WiFi Setup: <Skip>
# Step 6 of 6:
#   Review Configuration:
#       Country or territory: Brazil
#       Timezone: (UTC-03:00)America/Sao_Paulo <Next>
# Security & Analytics
#   Send to Ubiquiti
#
# Site Oficial do Ubiquiti Unifi: https://unifi-network.ui.com/
# Site Oficial do Unifi Software: https://www.ui.com/download/unifi
# Site Oficial do Unifi ID-SSO: https://account.ui.com
# Blog Oficial do Unifi Brasil: https://medium.com/ubntbr
# Canal do YouTUBE Ubiquiti BR: https://www.youtube.com/channel/UCb_mHuP7q75OrckBcNn3p2Q
#
# Download do Wifiman Desktop: https://community.ui.com/releases/WiFiman-Desktop-0-2-2/74d8bc1d-6735-444b-a7fc-0ea2584ccb89
# Site do Wifiman: http://wifiman.com/
# Site do SIMET: https://beta.simet.nic.br/
#
# Vídeo de instalação do GNU/Linux Ubuntu Server 18.04.x LTS: https://www.youtube.com/watch?v=zDdCrqNhIXI
# Vídeo de atualização do GNU/Linux Ubuntu Server 18.04.x LTS: https://www.youtube.com/watch?v=esnu8TAepHU&t
# Vídeo de configuração da Placa de Rede do GNU/Linux Ubuntu Server 18.04.x LTS: https://www.youtube.com/watch?v=zSUd4k108Zk
# Vídeo de configuração do Hostname do GNU/Linux Ubuntu Server 18.04.x LTS: https://www.youtube.com/watch?v=J7eyb5ynjZA
# Vídeo de configuração do Locale e Timezone do GNU/Linux Ubuntu Server 18.04.x LTS: https://www.youtube.com/watch?v=laiuH1zgg3U&t
# Vídeo de configuração do OpenSSH Server no GNU/Linux Ubuntu Server 18.04.x LTS: https://www.youtube.com/watch?v=ecuol8Uf1EE
#
# Variável da Data Inicial para calcular o tempo de execução do script (VARIÁVEL MELHORADA)
# opção do comando date: +%T (Time)
HORAINICIAL=$(date +%T)
#
# Variáveis para validar o ambiente, verificando se o usuário é "root", versão do ubuntu e kernel
# opções do comando id: -u (user)
# opções do comando: lsb_release: -r (release), -s (short), 
# opões do comando uname: -r (kernel release)
# opções do comando cut: -d (delimiter), -f (fields)
# opção do shell script: piper | = Conecta a saída padrão com a entrada padrão de outro comando
# opção do shell script: acento crase ` ` = Executa comandos numa subshell, retornando o resultado
# opção do shell script: aspas simples ' ' = Protege uma string completamente (nenhum caractere é especial)
# opção do shell script: aspas duplas " " = Protege uma string, mas reconhece $, \ e ` como especiais
USUARIO=$(id -u)
UBUNTU=$(lsb_release -rs)
#
# Variável do caminho do Log dos Script utilizado nesse curso (VARIÁVEL MELHORADA)
# opções do comando cut: -d (delimiter), -f (fields)
# $0 (variável de ambiente do nome do comando)
LOG="/var/log/$(echo $0 | cut -d'/' -f2)"
#
# Declarando as variáveis de download do Unifi (Links atualizados no dia 06/01/2021)
KEYSRVMONGODB="https://www.mongodb.org/static/pgp/server-3.4.asc"
KEYUNIFI="https://dl.ui.com/unifi/unifi-repo.gpg"
#
# Exportando o recurso de Noninteractive do Debconf para não solicitar telas de configuração
export DEBIAN_FRONTEND="noninteractive"
#
# Verificando se o usuário é Root e se a Distribuição é >=18.04 <IF MELHORADO)
# [ ] = teste de expressão, && = operador lógico AND, == comparação de string, exit 1 = A maioria dos erros comuns na execução
clear
if [ "$USUARIO" == "0" ] && [ "$UBUNTU" == "18.04" ]
	then
		echo -e "O usuário é Root, continuando com o script..."
		echo -e "Distribuição é >= 18.04.x, continuando com o script..."
		sleep 5
	else
		echo -e "Usuário não é Root ($USUARIO) ou a Distribuição não é >= 18.04.x ($UBUNTU)"
		echo -e "Caso você não tenha executado o script com o comando: sudo -i"
		echo -e "Execute novamente o script para verificar o ambiente."
		exit 1
fi
#
# Verificando se as portas 27017, 8080 e 8443 não estão sendo utilizadas no servidor
# [ ] = teste de expressão, == comparação de string, exit 1 = A maioria dos erros comuns na execução,
# $? código de retorno do último comando executado, ; execução de comando, opção do comando nc: -v (verbose)
# -z (DCCP mode)
clear
if [ "$(nc -vz 127.0.0.1 8080 ; echo $?)" == "0" ]
	then
		echo -e "A porta: 8080 já está sendo utilizada nesse servidor.\n"
		echo -e "Verifique a porta e o serviço associada a ela e execute novamente esse script.\n"
		exit 1
	else
		echo -e "A porta: 8080 está disponível, continuando com o script..."
		sleep 5
fi
#
if [ "$(nc -vz 127.0.0.1 8443 ; echo $?)" == "0" ]
	then
		echo -e "A porta: 8443 já está sendo utilizada nesse servidor.\n"
		echo -e "Verifique a porta e o serviço associada a ela e execute novamente esse script.\n"
		exit 1
	else
		echo -e "A porta: 8443 está disponível, continuando com o script..."
		sleep 5
fi
#
if [ "$(nc -vz 127.0.0.1 27017 ; echo $?)" == "0" ]
	then
		echo -e "A porta: 27017 já está sendo utilizada nesse servidor.\n"
		echo -e "Verifique a porta e o serviço associada a ela e execute novamente esse script.\n"
		exit 1
	else
		echo -e "A porta: 27017 está disponível, continuando com o script..."
		sleep 5
fi
#
# Script de instalação do Unifi Controller no GNU/Linux Ubuntu Server 18.04.x
# opção do comando echo: -e (enable interpretation of backslash escapes), \n (new line)
# opção do comando hostname: -I (all IP address)
# opção do comando date: + (format), %d (day), %m (month), %Y (year 1970), %H (hour 24), %M (minute 60)
# opção do comando cut: -d (delimiter), -f (fields)
echo -e "Início do script $0 em: $(date +%d/%m/%Y-"("%H:%M")")\n" &>> $LOG
clear
#
echo
echo -e "Instalação do Unifi Controller no GNU/Linux Ubuntu Server 18.04.x\n"
echo -e "Após a instalação do Unifi Controller acessar a URL: https://$(hostname -I | cut -d' ' -f1):8443/\n"
echo -e "Para finalizar a instalação via Web você precisa de uma conta (ID-SSO) no https://account.ui.com\n"
echo -e "A comunidade do Unifi recomenda utilizar o Navegador Google Chrome para sua configuração\n"
echo -e "Aguarde, esse processo demora um pouco dependendo do seu Link de Internet...\n"
sleep 5
#
echo -e "Adicionando o Repositório Universal do Apt, aguarde..."
	# opção do comando: &>> (redirecionar a saída padrão)
	add-apt-repository universe &>> $LOG
echo -e "Repositório adicionado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Adicionando o Repositório Multiversão do Apt, aguarde..."
	# opção do comando: &>> (redirecionar a saída padrão)
	add-apt-repository multiverse &>> $LOG
echo -e "Repositório adicionado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Atualizando as listas do Apt, aguarde..."
	#opção do comando: &>> (redirecionar a saída padrão)
	apt update &>> $LOG
echo -e "Listas atualizadas com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Atualizando todo o sistema, aguarde..."
	# opção do comando: &>> (redirecionar a saída padrão)
	# opção do comando apt: -y (yes)
	apt -y upgrade &>> $LOG
	apt -y full-upgrade &>> $LOG
	apt -y dist-upgrade &>> $LOG
echo -e "Sistema atualizado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Removendo os software desnecessários, aguarde..."
	# opção do comando: &>> (redirecionar a saída padrão)
	# opção do comando apt: -y (yes)
	apt -y autoremove &>> $LOG
	apt -y autoclean &>> $LOG
echo -e "Software desnecessários removidos com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalando o Unifi Controller, aguarde...\n"
#
echo -e "Adicionando o repositório do MongoDB, aguarde..."
	# opção do comando: &>> (redirecionar a saída padrão)
	# opção do comando wget: -q (quiet), -O (output document file)
	# opção do comando cp: -v (verbose)
	wget -qO - $KEYSRVMONGODB | apt-key add - &>> $LOG
	cp -v conf/mongodb-org.list /etc/apt/sources.list.d/ &>> $LOG
echo -e "Repositório do MongoDB adicionado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Adicionando o repositório do Unifi Controller, aguarde..."
	# opção do comando: &>> (redirecionar a saída padrão)
    # opção do comando wget: -O (output document file)
	# opção do comando cp: -v (verbose)
	wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg $KEYUNIFI &>> $LOG
	cp -v conf/100-ubnt-unifi.list /etc/apt/sources.list.d/ &>> $LOG
echo -e "Repositório do Unifi Controller adicionado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalando as dependências do Unifi Controller, aguarde..."
	# opção do comando: &>> (redirecionar a saída padrão)
	# opção do comando apt: -y (yes)
	apt update &>> $LOG
	apt -y install ca-certificates apt-transport-https &>> $LOG
echo -e "Dependências do Unifi Controller instaladas com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalando o Java OpenJDK e OpenJRE, aguarde..."
	# opção do comando: &>> (redirecionar a saída padrão)
	# opção do comando apt: -y (yes)
	# opção do comando update-java-alternatives: -l (list)
	apt -y install openjdk-8-jdk openjdk-8-jre &>> $LOG
	java -version &>> $LOG
	update-java-alternatives -l &>> $LOG
echo -e "OpenJDK e OpenJRE instalado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalando o Unifi Controller, aguarde..."
	# opção do comando: &>> (redirecionar a saída padrão)
	# opção do comando apt: -y (yes)
	apt install -y unifi &>> $LOG
echo -e "Unifi Controller instalado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Habilitando o Serviço do Unifi Controller, aguarde..."
	# opção do comando: &>> (redirecionar a saída padrão)
	systemctl enable unifi &>> $LOG
	systemctl restart unifi &>> $LOG
echo -e "Serviço do Unifi Controller habilitado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Verificando as portas de conexões do MongoDB e do Unifi Controller, aguarde..."
	# opção do comando netstat: -a (all), -n (numeric)
	# opção do comando grep: \| (função OU)
	netstat -an | grep '27017\|8080\|8443'
echo -e "Portas de conexões verificadas com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalação do Unifi Controller feita com Sucesso!!!."
	# script para calcular o tempo gasto (SCRIPT MELHORADO, CORRIGIDO FALHA DE HORA:MINUTO:SEGUNDOS)
	# opção do comando date: +%T (Time)
	HORAFINAL=$(date +%T)
	# opção do comando date: -u (utc), -d (date), +%s (second since 1970)
	HORAINICIAL01=$(date -u -d "$HORAINICIAL" +"%s")
	HORAFINAL01=$(date -u -d "$HORAFINAL" +"%s")
	# opção do comando date: -u (utc), -d (date), 0 (string command), sec (force second), +%H (hour), %M (minute), %S (second), 
	TEMPO=$(date -u -d "0 $HORAFINAL01 sec - $HORAINICIAL01 sec" +"%H:%M:%S")
	# $0 (variável de ambiente do nome do comando)
	echo -e "Tempo gasto para execução do script $0: $TEMPO"
echo -e "Pressione <Enter> para concluir o processo."
# opção do comando date: + (format), %d (day), %m (month), %Y (year 1970), %H (hour 24), %M (minute 60)
echo -e "Fim do script $0 em: $(date +%d/%m/%Y-"("%H:%M")")\n" &>> $LOG
read
exit 1
