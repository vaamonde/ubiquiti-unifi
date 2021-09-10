#!/bin/bash
# ===================== EM DESENVOLVIMENTO - AINDA NÃO ESTÁ FUNCIONANDO PARA PRODUÇÃO =====================
# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Data de criação: 17/01/2021
# Data de atualização: 10/09/2021
# Versão: 0.02
# Testado e homologado para a versão do GNU/Linux Ubuntu Server Core 18.x LTS ARM64
# Testado e homologado para a versão do Unifi Controller 6.2.x, MongoDB 3.6.x, OpenJDK e OpenJRE 8.x
#
# O software UniFi Controller que vem com o sistema Ubiquiti UniFi tem uma interface baseada em Web que facilita
# a administração, configuração e gerenciamento dos dispositivos Unifi (Access Point AP, Switch, Router, USG, etc).
# O sistema Unifi e baseado na arquitetura SDN (Software defined networking) que possibilita o gerenciamento 
# centralizado de todos os equipamentos da infraestrutura da rede utilizando o Unifi Controller Localmente ou 
# Remotamente, ou seja, não há necessidade de configurar individualmente cada um dos dispositivos na rede.
#
# O Ubuntu Core é Ubuntu para IoT e ambientes integrados, otimizado para atualizações de segurança e confiáveis.
# Seu sistema de arquivos raiz somente leitura é construído a partir dos mesmos pacotes usados ​​para construir o 
# conjunto mais amplo das distribuições do Ubuntu, ele só difere na forma como os pacotes são instalados e atualizados. 
#
# O Snappy ou simplesmente Snap é um software de implantação e um gerenciador de pacotes originalmente projetado e 
# construído pela Canonical para o sistema operacional Ubuntu Phone. Os pacotes, chamados de 'snaps' e a ferramenta 
# para usá-los, 'snapd', funcionam por toda uma gama de distribuições Linux e, portanto, permitem implantação de 
# software 'upstream' de forma distro-agnostic (independente da distribuição). O sistema é projetado para funcionar 
# em smartphones, nuvem, internet das coisas e ambiente de desktop.
#
# Informações que serão solicitadas na configuração via Web do Unifi Controller
# Step 1 of 6:
#   Name Your Controller
#       Controller Name: Vaamonde
#       By selecting this you are agreeing to end user licence agreement and the terms of service: ON <Next>
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
# Site Oficial do Snapcraft: https://snapcraft.io/
#
# Vídeo de instalação do GNU/Linux Ubuntu Server Core 18.x LTS: 
#
# Variável da Data Inicial para calcular o tempo de execução do script (VARIÁVEL MELHORADA)
# opção do comando date: +%T (Time)
HORAINICIAL=$(date +%T)
#
# Variáveis para validar o ambiente, verificando se o usuário é "root", versão do ubuntu e kernel
# opções do comando: lsb_release: -r (release), -s (short), 
# opção do shell script: acento crase ` ` = Executa comandos numa subshell, retornando o resultado
UBUNTU=$(lsb_release -rs)
ARQUITETURA=$(uname -m)
#
# Variável do caminho do Log dos Script utilizado nesse curso (VARIÁVEL MELHORADA)
# opções do comando cut: -d (delimiter), -f (fields)
# $0 (variável de ambiente do nome do comando)
LOG="/var/log/$(echo $0 | cut -d'/' -f2)"
#
# Declarando as variáveis de download do Unifi (Links atualizados no dia 17/01/2021)
UNIFI="unifi --edge"
SYSTEM="/var/lib/unifi/system.properties"
#
# Verificando se a Distribuição é >= Core 18 e se a Arquitetura é ARM64 <IF MELHORADO)
# [ ] = teste de expressão, && = operador lógico AND, == comparação de string, exit 1 = A maioria dos erros comuns na execução
clear
if [ "$UBUNTU" == "18" ] && [ "$ARQUITETURA" == "arm64" ]
	then
		echo -e "Distribuição é >= Core 18 e a arquitetura é ARM64, continuando com o script..."
		sleep 5
	else
		echo -e "Distribuição não é >= Core 18 ($UBUNTU) e a arquitetura não é ARM64 ($ARQUITETURA)"
		echo -e "Verifique a distrição e execute novamente o script para validar o ambiente."
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
        sleep 3
fi
#
if [ "$(nc -vz 127.0.0.1 8443 ; echo $?)" == "0" ]
	then
		echo -e "A porta: 8443 já está sendo utilizada nesse servidor.\n"
        echo -e "Verifique a porta e o serviço associada a ela e execute novamente esse script.\n"
		exit 1
	else
		echo -e "A porta: 8443 está disponível, continuando com o script..."
        sleep 3
fi
#
if [ "$(nc -vz 127.0.0.1 27017 ; echo $?)" == "0" ]
	then
		echo -e "A porta: 27017 já está sendo utilizada nesse servidor.\n"
        echo -e "Verifique a porta e o serviço associada a ela e execute novamente esse script.\n"
		exit 1
	else
		echo -e "A porta: 27017 está disponível, continuando com o script..."
        sleep 3
fi
#
# Script de instalação do Unifi Controller no GNU/Linux Ubuntu Core 18
# opção do comando echo: -e (enable interpretation of backslash escapes), \n (new line)
# opção do comando hostname: -I (all IP address)
# opção do comando date: + (format), %d (day), %m (month), %Y (year 1970), %H (hour 24), %M (minute 60)
# opção do comando cut: -d (delimiter), -f (fields)
echo -e "Início do script $0 em: $(date +%d/%m/%Y-"("%H:%M")")\n" &>> $LOG
clear
#
echo
echo -e "Instalação do Unifi Controller no GNU/Linux Ubuntu Core Server 18.x\n"
echo -e "Após a instalação do Unifi Controller acessar a URL: https://$(hostname -I | cut -d' ' -f1):8443/\n"
echo -e "Para finalizar a instalação via Web você precisa de uma conta (ID-SSO) no https://account.ui.com\n"
echo -e "A comunidade do Unifi recomenda utilizar o Navegador Google Chrome para sua configuração\n"
echo -e "Aguarde, esse processo demora um pouco dependendo do seu Link de Internet...\n"
sleep 5
#
echo -e "Atualizando as opções de software do Snap, aguarde..."
	#opção do comando: &>> (redirecionar a saída padrão)
	sudo snap refresh &>> $LOG
echo -e "Opções de software atualizadas com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Localizando o Snap do Unifi Controller, aguarde..."
	# opção do comando: &>> (redirecionar a saída padrão)
	sudo snap find unifi | grep UniFi &>> $LOG
echo -e "Sistema atualizado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalando o Unifi Controller, aguarde...\n"
#
echo -e "Instalando o Unifi Controller, aguarde..."
	# opção do comando: &>> (redirecionar a saída padrão)
	sudo snap install core &>> $LOG
	sudo snap install $UNIFI &>> $LOG
echo -e "Unifi Controller instalado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Verificando as portas de conexões do MongoDB e do Unifi Controller, aguarde..."
	# opção do comando netstat: -a (all), -n (numeric)
	# opção do comando grep: \| (função OU)
	ss -tua | grep '27017\|8080\|8443'
echo -e "Portas de conexões verificadas com sucesso!!!, continuando com o script..."
sleep 5
echo
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