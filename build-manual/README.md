# Manual Build Docs

Documentation for the manual build process.

## Base Build

Base: Xubuntu LTS (18.04)

This is about a 3rd of what gets installed/done.

## Corretto OpenJDK Distribution

```sh
cd /tmp/
wget https://corretto.aws/downloads/latest/amazon-corretto-8-x64-linux-jdk.deb && \
sudo dpkg -i amazon-corretto-8-x64-linux-jdk.deb
```

## Build in Linux Packages To Include

```sh
sudo apt update
sudo apt install adb bleachbit catfish cherrytree privoxy clamav clamav-freshclam dcfldd \
dc3dd ffmpeg foremost scalpel freeplane gimp gnupg gpa guymager transmission guymager \
hashcat hydra hydra-gtk recordmydesktop gtk-recordmydesktop httrack keepassxc \
libreoffice magicrescue medusa nmap onionshare ophcrack outguess stegsnow steghide \
stegosuite recoverdm recoverjpeg tor torsocks proxychains privoxy rkhunter radare2 \
testdisk recon-ng i2p gcc python-qt4 forensics-all slack pdfcrack gedit curl libxss1 \
libappindicator1 libindicator7 lynx
```

## Chrome Installation

```sh
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb
```

## Armory Installation

```sh
wget https://github.com/goatpig/BitcoinArmory/releases/download/v0.96/armory_0.96-gcc5.4_amd64.deb
dpkg -i armory_0.96-gcc5.4_amd64.deb
```

## CSI Tools Installation

Eventually will pull from https://github.com/infosecwriter/cs-tools

```sh
wget https://www.csilinux.com/csitools.zip && unzip csitools.zip -o -d /
```


## Build Tools Installation

```sh
sudo apt install git libtool autoconf autopoint \
build-essential libgcrypt-dev libidn11-dev zlib1g-dev \
libunistring-dev libglpk-dev miniupnpc libextractor-dev \
libjansson-dev libcurl4-gnutls-dev gnutls-bin libsqlite3-dev \
openssl libnss3-tools libmicrohttpd-dev libopus-dev libpulse-dev \
libogg-dev
```

## Third Party Tools Installation

Third party tools will need packaged in 1 download (many have modifications) or are not in the ubuntu 18 lts last time I checked..

* EXIFTool
* EyeWitness
* FastCrackZip
* FBI (Facebook Information)
* FileCompare (Forensics-Colorize)
* File Roller
* Ghidra
* GoBuster
* Infoga
* Instaloader
* iPhone Backup Decoder and Analyzer 2
* LibMobileDevice
* LittleBrother
* Maltego CE
* Metagoofil
* OSINTFramework
* OSINT-Search
* PDFMeta
* Pidgin (Off-The-Recod plugin)
* PhotoRec
* qTox
* RecoverMOV
* Sherlock
* Skiptracer
* Slack
* Spiderfoot
* Sublist3r
* theHarvester
* TInfoleak

Metagoofil can't be git cloned.  It is broken up there.

* ddrescuegui
