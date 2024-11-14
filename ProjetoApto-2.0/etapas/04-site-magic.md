#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 13/10/2024<br>
#Data de atualização: 18/10/2024<br>
#Versão: 0.02

Loja Oficial da Ubiquiti Unifi no Brasil: https://br.store.ui.com/<br>
Canal Oficial da Ubiquiti Unifi no YouTUBE: https://www.youtube.com/UBNTBR<br>
Comunidade Oficial da Ubiquiti Unifi no Facebook: https://www.facebook.com/groups/ubnt.unifi.br<br>
Comunidade Oficial da Ubiquiti Unifi no LinkedIn: https://www.linkedin.com/groups/12135007/

Site Oficial da Ubiquiti Unifi: https://ui.com/<br>
Central de Ajuda da Ubiquiti Unifi: https://help.ui.com/hc/en-us<br>
Especificações Técnicas da Ubiquiti Unifi: https://techspecs.ui.com/

Guia de início rápido do Unifi Express: https://br.store.ui.com/br/pt/pro/category/cloud-gateways-wifi-integrated/products/ux<br>
Datasheet do UDM-Pro: https://techspecs.ui.com/unifi/unifi-cloud-gateways/ux

[![Site Magic](http://img.youtube.com/vi//0.jpg)]( "Site Magic")

Link da vídeo aula: 

O QUE É E PARA QUE SERVER O SD-WAN: Software-Defined Wide Area Network (Rede de longa distância definida por software) é uma tecnologia que utiliza software para gerenciar e otimizar a conectividade em redes de longa distância (WAN). Ela permite a conexão de filiais, data centers e aplicativos na nuvem de forma mais eficiente e flexível, usando múltiplos tipos de conexão, como MPLS, LTE e banda larga. O SD-WAN melhora o desempenho, a segurança e a redução de custos ao priorizar o tráfego e otimizar a largura de banda, além de facilitar a administração centralizada de redes distribuídas.

O QUE É E PARA QUE SERVER O CGNAT: Carrier-Grade NAT (NAT (Network Address Translation/Masquerading - Tradução de Endereço de Rede/Mascaramento) de Nível de Operadora) é uma técnica usada por provedores de internet para permitir que vários dispositivos compartilhem um único endereço IP público. Isso é feito porque os endereços IPv4 estão se esgotando. Com o CGNAT, o provedor usa um único IP público para muitos clientes, traduzindo os endereços IP privados da rede interna de cada cliente para o IP público compartilhado. Embora ajude a economizar endereços IP, pode causar problemas com serviços que exigem um IP exclusivo, como VPN, jogos online e algumas aplicações P2P.

QUAL A FAIXA DE ENDEREÇOS DO CGNAT: A faixa de endereços IP usada pelo CGNAT segue o padrão definido pelo RFC-6598, que designa a rede 100.64.0.0/10 para esse propósito. Essa faixa abrange os endereços: 100.64.0.0 até 100.127.255.255. Ela foi criada especificamente para ser usada pelos provedores de serviços de internet (ISPs) para realizar a tradução de endereços entre redes internas e a internet pública, evitando o uso de IPs públicos desnecessários.

A) Rede WAN Claro UDM-Pro (Apto)......: 100.83.41.x/19  (255.255.224.0) (Faixa CGNAT)
B) Rede WAN Claro Unifi Express (Casa): 177.32.207.x/22 (255.255.252.0) (Fora da Faixa CGNAT)

A) Rede LAN UDM-Pro (Apto): 172.16.1.0/24   -  Gateway: 172.16.1.254  -  Classe B com Máscara de Classe C
B) Rede LAN Unifi Express.: 192.168.1.0/24  -  Gateway: 192.168.1.1   -  Classe C Padrão

#00_ Acessando o Unifi Ui da Ubiquiti ID-SSO (Single sign-on)<br>
```bash
#OBSERVAÇÃO: a comunidade do Ubiquiti Unifi recomenda utilizar o navegador Google Chrome para a 
#configuração e administração do Unifi Network ou Design Center, devido a compatibilidade do Java 
#e recursos integrados no sistema que funciona perfeitamente nesse navegador.

#OBSERVAÇÃO IMPORTANTE: não habilite o recurso de tradução do Inglês para o Português do Google
#Chrome, geralmente acontece alguns problemas na configuração ou tradução do termo técnico.

#OBSERVAÇÃO IMPORTANTE: A partir de 22 de julho, a autenticação multifator será obrigatória para 
#todas as contas Ubiquiti. Essa mudança é um passo significativo em nosso compromisso de garantir 
#o mais alto nível de segurança e proteção de dados. A Ubiquiti Unifi recomenda usar o UI Verify
#como um método de autenticação de um clique diretamente do seu dispositivo móvel, mas também 
#oferecemos suporte a vários outros métodos.

No seu navegador Google Chrome acesse a URL: https://unifi.ui.com/
```

#01_ Criando o SD-WAN com o Site Magic no Unifi Ui para conectar o UDM-Pro e Unifi Express<br>
```bash
Site Manager
  Site Magic
    Add New Site Magic Group
      Name: SiteVaamonde
        Selecionar: Site          Host      WAN IP Address
                    Vaamonde      UDM-Pro   100.100.100.100
                    UnifiExpress  UX        100.100.100.100
    <Add>
    Marcar: Vaamonde:     apto: 172.16.1.0/24 - Vaamonde: 192.168.10.0/24
            UnifiExpress: Default: 192.168.1.0/24
  <Connect>
#OBSERVAÇÃO IMPORTANTE: APÓS A CRIAÇÃO DO SITE MAGIC AS DUAS REDES SERÃO SINCRONIZADAS E
#CONECTADAS AUTOMATICAMENTE APÓS FICA COM O LED VERDE NA REDE: Vaamonde E UnifiExpress.
```

#02_ Testando a conectividade entre o UDM-Pro e Unifi Express via Site Magic<br>
```bash
#atalho do Terminal no Linux Mint
Terminal: Ctrl + Alt + T

#verificando as informações de rede do UDM-Pro no Linux Mint
ifconfig wlp4s0

#verificando as informações de Gateway do UDM-Pro no Linux Mint
route -n

#pingando o endereço de Gateway do UDM-Pro no Linux Mint
ping 172.16.1.254

#pingando o endereço de Gateway do Unifi Express no Linux Mint
ping 192.168.1.1

#pingando o endereço de rede do Switch Lite no Linux Mint
ping 192.168.1.50

#traçando as rotas de rede do Switch Lite no Linux Mint
#opção do comando traceroute: -n (Do not try to map IP addresses to host names)
traceroute -n 192.168.1.50
```