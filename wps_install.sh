#!/bin/bash -eux

## wps office Ubuntu o Debian

#Descargar wps e instalar https://www.wps.com/download
(
cd /tmp
wget "http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb"
sudo dpkg -i wps-office_10.1.0.5707~a21_amd64.deb
rm -f wps-office_10.1.0.5707~a21_amd64.deb
)

#Descargar e instalar Fuentes
(
cd /tmp
sudo wget "https://www.dropbox.com/s/lfy4hvq95ilwyw5/wps_symbol_fonts.zip"
sudo unzip wps_symbol_fonts.zip -d wps_symbol_fonts
sudo mkdir /usr/share/fonts/wps-fonts
sudo cp wps_symbol_fonts/* /usr/share/fonts/wps-fonts
rm -f wps_symbol_fonts.zip
rm -rf wps_symbol_fonts
)

#Descargar e instalar Diccionario y ortografia Español
(
cd /tmp
sudo wget http://wps-community.org/download/dicts/es_ES.zip
sudo unzip es_ES.zip
if [ ! -d /opt/kingsoft/wps-office/office6/dicts/es_ES ]
then
sudo mv es_ES /opt/kingsoft/wps-office/office6/dicts
else
echo ya existe
fi
sudo rm es_ES.zip
)
