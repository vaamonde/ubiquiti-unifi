#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/08/2024<br>
#Data de atualização: 13/04/2025<br>
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

[![Advanced Config](http://img.youtube.com/vi/XUFe0H7b12U/0.jpg)](https://www.youtube.com/watch?v=XUFe0H7b12U "Advanced Config")

Link da vídeo aula: https://www.youtube.com/watch?v=XUFe0H7b12U

## 00_ Acessando o Unifi Express com a sua conta da Ubiquiti ID-SSO (Single sign-on)

**OBSERVAÇÃO:** a comunidade do Ubiquiti Unifi recomenda utilizar o navegador *Google Chrome* para a configuração e administração do **Unifi Network ou Design Center**, devido a compatibilidade do *Java* e recursos integrados no sistema que funciona perfeitamente nesse navegador.

**OBSERVAÇÃO IMPORTANTE:** não habilite o recurso de *Tradução do Inglês para o Português do Google Chrome*, geralmente acontece alguns problemas na configuração ou tradução do termo técnico.

**OBSERVAÇÃO IMPORTANTE:** A partir de *22 de julho 2024*, a autenticação **multifator** será obrigatória para todas as contas Ubiquiti. Essa mudança é um passo significativo em nosso compromisso de garantir o mais alto nível de segurança e proteção de dados. A Ubiquiti Unifi recomenda usar o *UI Verify* como um método de autenticação de um clique diretamente do seu dispositivo móvel, mas também oferecemos suporte a vários outros métodos.

No seu navegador Google Chrome acesse a URL: https://192.168.1.1 ou https://unifi

## 01_ Configurando as opções básicas do Unifi Express no Unifi OS
```bash
OS Settings
  (01) Applications
    Unifi OS
      Release Channel: Official
    Auto Update
      (ON) Unifi OS (Default)
      (ON) Application (Default)
      Occurs: Weekly (semanalmente) (Default)
      at: 12 AM (Default)
      Repeat On: S (Sunday-Domingo) (Default)
  (02) Console Settings
    Console name: unifiexpress
    System Config Backup: (ON) Auto (Weekly)
    Location/Time Zone: (UTC -03:00) Sao Paulo (Change)
    LED/LCM Scree: (ON) LCM Screen (Default)
    Advanced: (ON) Remote Access (Enable)
              (OFF) Direct REmote Connection (Default)
              (ON) Analytics & Improvements (Enable)
              (ON) SSH (Enable)
              Enable SSH: (ON) I agree to enable SSH <Continue>
                SSH Password:
                  Password: SUA_SENHA
                  Confirm Password: SUA_SENHA
                <Enable>
```

## 02_ Configurando as opções básicas do Unifi Express no Unifi Network
```bash
Network
  Settings
    System
      General
        Country/Region: Brazil (Change)
        Language: English (Default)
        Time Format: 24 hours (Enable)
        Theme: Dark (Enable)
      Updates
        Automate Device Updates: (ON) Daily At: 03:00 AM (Default)
      Backup
        (ON) Auto Backup Monthly (Default)
      Advanced
        WiFiMan Support: (ON) Default
        Side Panel Tabs: (ON) Enable
        Interface Refresh Rate: Automatically adapt
        Profissional Installer: (OFF) (Default)
        Debug Tools: (OFF) (Default)
        Data Retention: (ON) (Default)
        Network Time Protocol (NTP): (OFF) (Disable)
          <Edit>
            Enter NTP Server Hostname: a.st1.ntp.br (Change)
            Enter NTP Server Hostname: a.ntp.br (Change)
          <Save Changes>
        Email Service: SSO Email (ON) (Default)
        Inform Host: (OFF) Default
        SNMP Monitoring: (ON) SNMP Version 1 & 2C
          Community String: public (Default)
        Device Authentication: (ON) Device SSH Authentication (Enable)
          Username: seu_usuário
          Password: sua_senha
        Logging Levels: Auto (Default)
        Remote Logging Location: (ON) Network Application (Default)
        Wireless Connectivity:
          (ON) Wireless Meshing (Default)
          (ON) New WiFi Device Auto-Link (Default)
        Connectivity Monitor Type: (ON) Custom IP (Enabled)
          Monitor IP Address: 8.8.8.8
  <Apply Changes>
```

## 03_ Configurando as opções básicas de Internet (WAN) no Unifi Network

Indicação do DNS da CloudFlare: https://blog.cloudflare.com/introducing-1-1-1-1-for-families

```bash
Settings
  Internet
    Clique em: Primary (WAN1)
      Name: Claro (Change)
      Expected ISP Speeds: Default
      Advanced: Manual (Enable)
        VLAN ID: (OFF) Default
        MAC Address Clone: (OFF) Default
        Smart Queues: (OFF) Default
        IPTV Streaming IGMP Proxy: (OFF) Default
        UPnP: (OFF) Default
        Dynamic DNS: (OFF) Default
        DHCP CoS: (OFF) Default
        IPv4 Configuration
          IPv4 Connection: (ON) DHCPv4
          DHCP Client Options: (OFF) Default
          DNS Server: (OFF) Auto (Disable)
            #Malware and Adult Content
            Primary Server: 1.1.1.3
            Secondary Server: 1.0.0.3
        IPV6 Configuration
          IPv6 Connection: (ON) DHCPv6 (Enable)
            Prefix Delegation Size: 64
          DNS Server: (OFF) Auto (Disable)
            #Malware and Adult Content
            Primary Server: 2606:4700:4700::1113 (Change)
            Secondary Server: 2606:4700:4700::1003 (Change)
    <Apply Changes>
```

## 04_ Configurando as opções básicas da Rede Local (LAN) no Unifi Network
```bash
Settings
  Networks
    Clique em: Default
      IPv4
        Gateway IP/Subnet: (OFF) Auto-Scale Network (Disable)
          Host Address: 192.168.1.1 (Default)
          Netmask: 24 (Default)
          254 Usable Hosts (Default)
        Advanced: Manual (Enable)
          Guest Network: (OFF) Default
          Isolate Network: (OFF) Default
          Allow Internet Access: (ON) Default
          Content Filtering: (ON) None (Default)
            (OFF) IGMP Snooping (Default)
            (ON) mDNS (Default)
          DHCP
            DHCP Mode: DHCP Server
            DHCP Range
              Start: 192.168.1.100 (Enable)
              Stop: 192.168.1.150 (Enable)
              (OFF) DHCP Guarding (Default)
            DHCP Service Management: Show Options
              (OFF) NTP Server (Default)
              (OFF) Network Boot (Default)
              (OFF) Time Offset (Default)
              (OFF) Option 43 (Default)
              (OFF) WPAD URL (Default)
              (OFF) TFTP Server (Default)
              (ON) Ping Conflict Detection (Default)
              Default Gateway: (ON) Auto (Default)
              DNS Server: (ON) (Default)
              Lease Time: 86500 Sec (Default)
              Domain Name: casa.intra (Change)
              Custo  DHCP Option: (Default)
      <Apply Changes>
    Clique em: Default
      IPv6
        Interface Type: (ON) Prefix Delegation (Enable)
        Prefix Delegation Interface: Claro (Enable)
        Prefix Delegation ID: (ON) Auto (Default)
        Advanced: (ON) Auto (Default)
      <Apply Changes>
    Multicast Settings
      IoT Auto-Discovery mDNS: (ON) Default
      Multicast Filtering IGMP Snooping: (OFF) Default
    Switch Isolation Settings
      L3 Network Isolation (ACL): (OFF) Default
      Device Isolation (ACL): (OFF) Default
    Global Switch Settings
      Spanning Tree Protocol: (ON) RSTP (Default)
      Rogue DHCP Server Detection DHCP Snooping: (ON) Default
      Jumbo Frames: (OFF) Default
      Flow Control: (OFF) Default
      802.1X Control: (OFF) Default
```

## 05_ Configurando as opções básicas da Rede Sem-Fio (WiFi - Wireless) no Unifi Network
```bash
Settings
  WiFi
    Clique em: teste
      Name: @CasaVaamonde (Change)
      Password: SUA_SENHA_DO_WIFI
      Broadcasting APs: (ON) All (Default)
      Advanced: (ON) Manual (Enable)
        Private Pre-Shared Keys: (OFF) Default
        Hotspot Portal: (OFF) Default
        WiFi Band: (ON) 2.4Ghz (ON) 5 Ghz (OFF) 6 Ghz (Default)
        Band Steering: (ON) Default
        Hide WiFi Name: (OFF) Default
        Client Device Isolation: (OFF) Default
        Proxy ARP: (OFF) Default
        BSS Transition: (ON) Default
        UAPSD: (OFF) Default
        Fast Roaming: (OFF) Default
        WiFi Speed Limit: (OFF) Default
        Multicast Enhancement: (OFF) Default
        Multicast and Broadcast Control: (OFF) Default
        802.11 DTIM Period: (ON) Auto (Default)
        Minimum Data Rate Control: (ON) Auto (Default)
        MAC Address Filter: (OFF) Default
        RADIUS MAC Authentication: (OFF) Default
        Security Protocol: WPA2 (Default)
        PMF: (ON) Disabled (Default)
        Group Rekey Interval: (OFF) Default
        WiFi Blackout Scheduler: (OFF) Default
      <Apply Changes>
```

## 06_ Configurando as opções básicas dos Rádios Sem-Fio (WiFi - Wireless) no Unifi Network
```bash
Network
  Unifi Devices
    Clique em: unifiexpress
      Settings:
        Radios
          2.4 GHz
            Channel Width: 40 MHz (Enable)
            Channel: 11 (Change)
            Transmit Power: Medium (Change)
            (OFF) Minimum RSSI (Default)
          5 GHz
            Channel Width: 80 MHz (Change)
            Channel: 36 (Enable)
            Transmit Power: High (Change)
            (OFF) Minimum RSSI (Default)
          (ON) Meshing (Default)
        Service
          MSS Clamping: (ON) Auto (Default)
          ARP Cache Timeout: (ON) Normal (Default)
          Internet Verification Server: (ON) ping.ui.com (Default)
      <Apply Changes>
```

## 07_ Configurando as opções básicas do Switch PoE no Unifi Network
```bash
Network
  Unifi Devices
    Clique em: USW Lite 8 PoE
      Settings:
        Name: SwitchCasa (Change)
        IP Settings
          IP Configuration: (ON) Static (Enable)
            IP Address: 192.168.1.50
            Subnet Mask: 255.255.255.0
            Gateway: 192.168.1.1
            Preferred DNS: 192.168.1.1
            Alternate DNS: (OFF)
            DNS Suffix: casa.intra
        Advanced
          (ON) Global Switch Settings (Default)
          Priority: 32768 (Default)
          (ON) SNMP (Enable)
            Location: Sala
            Contact: Robson Vaamonde
        Manage
          (ON) LED (Default)
      <Apply Change>
```

## 08_ Teste de conexão com a Internet em um Desktop conectado na Rede
```bash
Teste de conexão: Terminal (Atalho Ctrl + Alt + T)

#resolvendo o DNS utilizando o terminal
ping 8.8.8.8
ping google.com
```

Testando a navegação e resolução de nomes<br>
Navegador firefox ou google chrome: https://youtube.com/boraparapratica

## 09_ Teste de conexão com a Internet em um Smartphone conectado na Rede Sem-Fio
```bash
#testando a velocidade utilizando Smartphone 2.4 GHz
Celular 2.4GHZ
  WiFiman
    <Iniciar o teste de velocidade>
  <Concluir>

#testando a velocidade utilizando Smartphone 5.0 GHz
Celular 5.0GHz
  WiFiman
    <Iniciar o teste de velocidade>
  <Concluir>

#visualizando os Testes no Unifi Network
Network
  Radios
    Speed Tests
```

Testando a velocidade utilizando o Site Fast<br>
Navegador firefox ou google chrome: https://fast.com/pt/