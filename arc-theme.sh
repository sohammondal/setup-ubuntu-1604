# Source - https://software.opensuse.org/download.html?project=home%3AHorst3180&package=arc-theme

sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/home:Horst3180.list"
wget -nv https://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt-get update -y
sudo apt-get install arc-theme -y


# Srouce - https://snwh.org/moka/download


sudo add-apt-repository -u ppa:snwh/ppa

sudo apt install moka-icon-theme faba-icon-theme faba-mono-icons -y


# Source - https://github.com/horst3180/arc-icon-theme

git clone https://github.com/horst3180/arc-icon-theme --depth 1
mkdir ~/.icons
cp -pr arc-icon-theme/Arc ~/.icons
rm -rf arc-icon-theme