#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/08/2024<br>
#Data de atualização: 18/08/2024<br>
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

[![Advanced Config](http://img.youtube.com/vi//0.jpg)]( "Advanced Config")

Link da vídeo aula: 

#00_ Acessando o Unifi Express com a sua conta da Ubiquiti ID-SSO (Single sign-on)<br>
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

No seu navegador Google Chrome acesse a URL: https://192.168.1.1 ou https://unifi
```

#01_ Configurando as opções básicas do Unifi Express no Unifi OS<br>
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

#02_ Teste de conexão com a Internet em um Desktop conectado na Rede<br>
```bash
Teste de conexão: Terminal (Atalho Ctrl + Alt + T)

#resolvendo o DNS utilizando o terminal
ping 8.8.8.8
ping google.com

#testando a navegação e resolução de nomes
Navegador firefox ou google chrome: https://youtube.com/boraparapratica
```

