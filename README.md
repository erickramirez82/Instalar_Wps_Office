# Instalar_Wps_Office
Instalar Wps office para debian o ubuntu

## Menú
* [Instalación automática mediante script Wps Office](#chapter-1)
* [Instalación pasa a paso instalar Wps Office](#chapter-2)


## Instalación automática mediante script <a id="chapter-1"></a>
Abra una terminal de comandos y ejecute:
```
curl https://raw.githubusercontent.com/erickramirez82/Instalar_Wps_Office/master/wps_install.sh | bash
```
## Instalación pasa a paso instalar Wps Office <a id="chapter-2"></a>

## wps office Ubuntu o Debian

### Descargar e instalar wps https://www.wps.com/download 
```
wget http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb
sudo dpkg -i wps-office_10.1.0.5707~a21_amd64.deb
```
### Descargar e instalar Fuentes
```
wget https://www.dropbox.com/s/lfy4hvq95ilwyw5/wps_symbol_fonts.zip
sudo unzip wps_symbol_fonts.zip
sudo mkdir /usr/share/fonts/wps-fonts
sudo cp wps_symbol_fonts/* /usr/share/fonts/wps-fonts
sudo rm es_ES.zip
```
### Descargar e instalar diccionario y ortografia Español
```
cd /opt/kingsoft/wps-office/office6/dicts
wget http://wps-community.org/download/dicts/es_ES.zip
sudo unzip es_ES.zip
sudo rm es_ES.zip
```
