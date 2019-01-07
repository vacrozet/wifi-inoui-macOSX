cd ~/
cmd=${alias='alias wifi-sncf="sh ~/.wifi-sncf-inoui/wifi-sncf-inoui.sh"'}
git clone https://github.com/vacrozet/wifi-inoui-macOSX.git .wifi-sncf-inoui
sleep 2
echo $cmd >> ~/.zshrc
source ~/.zshrc
