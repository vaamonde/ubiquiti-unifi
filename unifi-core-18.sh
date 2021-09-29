#!/bin/bash
# ===================== EM DESENVOLVIMENTO - AINDA NÃO ESTÁ FUNCIONANDO PARA PRODUÇÃO =====================
# =================== NÃO RECOMENDO PARA PRODUÇÃO, VERSÃO DISPONÍVEL NO SNAPCRAFT 5.13.X ==================
# =============== LINK DE APOIO PARA A NOVA VERSÃO: https://github.com/hairychris/unifi-snap ==============
# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Data de criação: 17/01/2021
# Data de atualização: 13/09/2021
# Versão: 0.04
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
# Download do Wifiman Desktop: https://community.ui.com/releases/WiFiman-Desktop-0-2-2/74d8bc1d-6735-444b-a7fc-0ea2584ccb89
# Site do Wifiman: http://wifiman.com/
# Site do SIMET: https://beta.simet.nic.br/
#
# Vídeo de instalação do GNU/Linux Ubuntu Server Core 18.x LTS: 
#
# Após a instalação do Unifi Controller acessar a URL: https:IP_UBUNTU_CORE:8443/"
# Para finalizar a instalação via Web você precisa de uma conta (ID-SSO) no https://account.ui.com"
# A comunidade do Unifi recomenda utilizar o Navegador Google Chrome para sua configuração
#
# Atualizando as opções de software do Snap
sudo snap refresh
#
# Localizando no Snap a versão do Unifi Controller
sudo snap find unifi
#
# Instalando o Snap Core
sudo snap install core
#
# Instalando o Unifi Controller
sudo snap install unifi --edge

# Verificando as portas do Unifi Controller
ss -tua | grep '27017\|8080\|8443'