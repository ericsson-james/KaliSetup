echo  "Creating a backup of the sources.list and adding the rolling release regular repositories and source repositories"
sudo cp /etc/apt/sources.list /etc/apt/sources.list.BackUp

echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list
echo "# For source package access, uncomment the following line" >> /etc/apt/sources.list
echo "# deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
echo "deb http://http.kali.org/kali sana main non-free contrib" >> /etc/apt/sources.list
echo "deb http://security.kali.org/kali-security sana/updates main contrib non-free" >> /etc/apt/sources.list
echo "# For source package access, uncomment the following line" >> /etc/apt/sources.list
echo "# deb-src http://http.kali.org/kali sana main non-free contrib" >> /etc/apt/sources.list
echo "# deb-src http://security.kali.org/kali-security sana/updates main contrib non-free" >> /etc/apt/sources.list
echo "deb http://old.kali.org/kali moto main non-free contrib" >> /etc/apt/sources.list
echo "# For source package access, uncomment the following line" >> /etc/apt/sources.list
echo "# deb-src http://old.kali.org/kali moto main non-free contrib" >> /etc/apt/sources.list

echo "Starting the update"
sudo apt-get update

echo "Placing git repos into /opt"
cd /opt
sudo git clone https://github.com/Tib3rius/AutoRecon.git
sudo git clone https://github.com/rebootuser/LinEnum.git
cd AutoRecon
pip3 install -r requirements.txt
cd /opt

echo "Starting the apt-get installations"
sudo apt install gobuster
sudo apt install empire
sudo apt install veil
sudo apt install seclists
sudo apt install ftp
apt-get install -y virtualbox-guest-x11

echo "updating the db"
updatedb

read -p "Reboot? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Rebooting."
    sudo reboot
fi
