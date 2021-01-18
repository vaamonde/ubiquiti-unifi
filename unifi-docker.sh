#!/bin/bash
# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Data de criação: 17/01/2021
# Data de atualização: 18/01/2021
# Versão: 0.01
# Testado e homologado para a versão do GNU/Linux Ubuntu Server 18.x LTS x64
# Testado e homologado para a versão do Docker 20.10.x, Portainer 1.24.x
# Testado e homologado para a versão do Unifi Controller 6.0.x
#
# O software UniFi Controller que vem com o sistema Ubiquiti UniFi tem uma interface baseada em Web que facilita
# a administração, configuração e gerenciamento dos dispositivos Unifi (Access Point AP, Switch, Router, USG, etc).
# O sistema Unifi e baseado na arquitetura SDN (Software defined networking) que possibilita o gerenciamento 
# centralizado de todos os equipamentos da infraestrutura da rede utilizando o Unifi Controller Localmente ou 
# Remotamente, ou seja, não há necessidade de configurar individualmente cada um dos dispositivos na rede.
#
# O Docker é uma tecnologia de software que fornece contêineres, promovido pela empresa Docker, Inc. O Docker fornece uma 
# camada adicional de abstração e automação de virtualização de nível de sistema operacional no Windows e no Linux. O Docker
# usa as características de isolação de recurso do núcleo do Linux como cgroups e espaços de nomes do núcleo, e um sistema de
# arquivos com recursos de união, como OverlayFS e outros para permitir "contêineres" independentes para executar dentro de 
# uma única instância Linux, evitando a sobrecarga de iniciar e manter máquinas virtuais (VMs).
#
# O Portainer.io uma solução de gerenciamento para o Docker, com ele é possível gerenciar facilmente os seus hosts Docker e 
# clusters com Docker Swarm através de uma interface web limpa, simples e intuitiva.
#
# Informações que serão solicitadas na configuração via Web do Portainer.io
# http://IP_DO_SERVIDOR:9000
# Username: admin
# Password: pti@2018
#   Local:
#       Stacks:
#           Add stack:
#               Name: unifi-controller
#               Web editor: (copiar o docker-compose do Unifi Controller)
#               Enable Access Controll: OFF
#               Deploy the Stack.
#
# Informações que serão solicitadas na configuração via Web do Unifi Controller
# https://IP_DO_SERVIDOR:8443
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
# Github do Docker Unifi: https://github.com/linuxserver/docker-unifi-controller
# Site oficial: https://www.docker.com/docker-community
# Site oficial: https://portainer.io/
#
# Vídeo de instalação do GNU/Linux Ubuntu Server 18.04.x LTS: https://www.youtube.com/watch?v=zDdCrqNhIXI
# Vídeo de instalação e configuração do Docker e Portainer.io: https://www.youtube.com/watch?v=ixgLCHX_7QA
#
---
version: "2.1"
services:
  unifi-controller:
    image: ghcr.io/linuxserver/unifi-controller 
    container_name: unifi-controller
    environment:
      - PUID=1000 #for UserID - see below for explanation
      - PGID=1000 #for GroupID - see below for explanation
      - MEM_LIMIT=1024M #optional - Optionally change the Java memory limit (-Xmx) (default is 1024M).
    volumes:
      - /var/lib/docker/unifi:/config #All Unifi data stored here
    ports:
      - 3478:3478/udp #Unifi STUN port
      - 10001:10001/udp #Required for AP discovery
      - 8080:8080 #Required for device communication
      - 8443:8443 #Unifi web admin port
      - 1900:1900/udp #optional - Required for Make controller discoverable on L2 network option
      - 8843:8843 #optional - Unifi guest portal HTTPS redirect port
      - 8880:8880 #optional - Unifi guest portal HTTP redirect port
      - 6789:6789 #optional - For mobile throughput test
      - 5514:5514 #optional - Remote syslog port
    restart: unless-stopped