#!/bin/bash
# BabyBeltPro Plymouth Theme Installer for Raspberry Pi
exists () { (
    IFS=:
    for d in $PATH; do
      if test -x "$d/$1"; then return 0; fi
    done
    return 1
) }



echo "Checking for required software..."

if ! exists git; then
    echo "Installing git..."
    sudo apt-get update
    sudo apt-get install -y git
else
    echo "git is already installed."
fi

if ! exists plymouthd || ! exists plymouth; then
    echo "Installing Plymouth..."
    sudo apt-get update
    sudo apt-get install -y plymouth plymouth-themes
else
    echo "Plymouth is already installed."
fi

echo "Editing boot configs to quiet down / splash..."
sudo sed -i ' 1 s/.*/&  quiet splash plymouth.ignore-serial-consoles logo.nologo loglevel=3 vt.global_cursor_default=0/' /boot/firmware/cmdline.txt
sudo sed -i '/disable_overscan=1/a disable_splash=1' /boot/firmware/config.txt

echo "Cloning Plymouth theme repository..."
git clone --no-checkout https://github.com/hanzov69/BabyBeltPro.git ~/bbprotmp
cd ~/bbprotmp
git sparse-checkout init --no-cone
git sparse-checkout set Software/RaspberryPi/plymouth/
git checkout
sudo cp -r ~/bbprotmp/Software/RaspberryPi/plymouth/bbpro /usr/share/plymouth/themes/

echo "Setting Plymouth theme to BabyBeltPro..."
sudo plymouth-set-default-theme -R bbpro
echo "Cleaning up temporary files..."
rm -rf ~/bbprotmp
echo "Need to reboot for changes to take effect."
read -e -p "Reboot now? (Y/N) " choice
[[ "$choice" == [Yy]* ]] && sudo shutdown -r now || echo "Shutdown aborted. Please remember to reboot later."