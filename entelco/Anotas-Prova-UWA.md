#01 - Basic Config
  Unifi Consoles: Cloud Gateways
  Full-Stack Application: 
  UXG-Max: Não enxerga ele no Site Manager, é gerenciado por outro elemento do Network
  UCK: Tem o UnifiOS Network para gerenciar os demais elementos
  Estudar: https://ui.com/us/en/cloud-gateways
  Estudar Cloud Gateways: https://techspecs.ui.com/unifi/cloud-gateways
  Estudar: Command Line SSH: root - ubnt
  Estudar Access Point: https://techspecs.ui.com/unifi/wifi
    Indoor.: 
    Outdoor: https://techspecs.ui.com/unifi/wifi?filters=external-antenna-option
  Estudar: https://help.ui.com/hc/en-us/articles/115002262328-Considerations-for-Optimal-Wireless-Mesh-Networks
  Estudar Wireless Bridging: https://ui.com/us/en/wifi/bridging

==============================================================================================
VLAN: Virtual-LAN: InterVLAN Switch Layer 3
  Practicality, Security, Efficiency, Flexibility: Documentar Playload VLAN-ID
==============================================================================================

Estudo específico para Frequência em Hertz (GHz to Hz: 1GHz = 10^9Hz | )

===============================================================================================

Tabela Decibel & Rádio Frequência Signal Power Escala Log: P dBM = 10 x log 10 (P mW)

Typical WiFi AP = 100mW (20dBm) <-- Padrão dos Access Point

Rules (regras) of 3's& 10's (logarithmic match) <--- FOCAR
Log (dB)  Linear
  +3        x2
  +10       x10
  -3        /2
  -10       /10

Free Space Path Loss (FSPL)
2.4 GHz   1m: -40dB   2m: -45dB   
5.0 GHz
6.0 GHz

EIRP (Effective Isotropic Radiated Power)
Transmissão e Sinal do equipamento
WiFi 

SNR Signal-to-Noise Ratio
 0 dB = sinal igual, sem variação;
 3 dB = duble (+) or half (-)
10 dB = 10x more (+) or less (-)

Estudar as tabelas: https://mcsindex.com/
Estudar as tabelas: https://mcsindex.net/

Máxima modulação do WiFi 4   64-QAM (Quadrature Amplitude Modulation)  6 bits
Máxima modulação do WiFi 5  256-QAM (Quadrature Amplitude Modulation)  8 bits
Máxima modulação do WiFi 6 1024-QAM (Quadrature Amplitude Modulation) 10 bits
Máxima modulação do WiFi 7 4096-QAM (Quadrature Amplitude Modulation) 12 bits

Intersymbol Interference (ISI)

MIMO & Polarization: TX x RX : Streams (DL = Downlink / UL = Uplink / SU - Single User)
MU = Multi User
SU = Single User (um usuário de cada vez)

Por-Rádio:
Wi-Fi4: MIMO (SU) - Downlink (DL) um terminal de cada vez (um usuário por vez)
Wi-Fi5: MU-MIMO 4x4 - Downlink (DL) quatro terminais simultâneo (somente Downlink)
Wi-Fi6: MU-MIMO 8x8 ou 16x16: Downlink (DL) e Uplink (UL)

Coverage vs. PHY Rates (2.4GHz, HT20, Log GI) - Modulação depende do SNR
https://mcsindex.com/ (consultar site): https://mcsindex.net/
Problemas sempre relacionado a distância ou nível de sinal do AP para o dispositivos finais
Problemas de redes legadas, trocar os AP's para Wi-Fi 802.11a 
Mínimo de velocidade que ele pode receber: beacon frame 102,4 ms (100 TU).
  Target Beacon Transmission Time (TBTT)
  1 TU = 1024 microseconds
  Beacon interval =100 TU (100x 1024 microseconds or 102.4 milliseconds)
Recomendações de sempre utilizar o mínimo de SSI por

Maximum SSIDs per band:
8 (with Wireless Meshing disabled) or 4 (with Wireless Meshing enabled)

Cenário com Alta-Densidade (HD) utilizando frequência de 5.0GHZ usar largura de banda 20MHz
BW = bandwidth (Largura de Banda)
DFS = Dynamic Frequency Selection (DFS) - AP checklist during DFS operation
Quando é feito a configuração do DFS tem radar

Co-Channel Interference (CCI): interferência no próprio canal (CSMA/CA), recomendo duas células
Adjacent Channel Interference ACI: overlapping "tail end"
Recurso: PRISM RF Filter Technology (E7-Campus 5.0GHz)
https://techspecs.ui.com/unifi/wifi/e7-campus-us?subcategory=all-wifi

Noise Sources: HT20, HT40 e VHT80
RS Noise: trocar os AP's com modelos mais novos
Electromagnetic Interference (EMI)

Power Spectral Density (PSD)
Coverage vs Channel Width: (Usar WiFi Calculator)
UniFi AP Channel Operation: padrão auto, manual sempre em ambiente complexo

Estudar: https://help.ui.com/hc/en-us/articles/115005212927-AP-Antenna-Radiation-Patterns
Antenna Gain & Function
Utilizar o WiFi Calculator: https://wifi.ui.com/

