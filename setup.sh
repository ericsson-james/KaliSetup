#echo  "Creating a backup of the sources.list and adding the rolling release regular repositories and source repositories"
#sudo cp /etc/apt/sources.list /etc/apt/sources.list.BackUp
#sudo echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list
#echo "# For source package access, uncomment the following line" >> /etc/apt/sources.list
#echo "# deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
#sudo echo "deb http://http.kali.org/kali sana main non-free contrib" >> /etc/apt/sources.list
#sudo echo "deb http://security.kali.org/kali-security sana/updates main contrib non-free" >> /etc/apt/sources.list
#echo "# For source package access, uncomment the following line" >> /etc/apt/sources.list
#echo "# deb-src http://http.kali.org/kali sana main non-free contrib" >> /etc/apt/sources.list
#echo "# deb-src http://security.kali.org/kali-security sana/updates main contrib non-free" >> /etc/apt/sources.list
#echo "deb http://old.kali.org/kali moto main non-free contrib" >> /etc/apt/sources.list
#echo "# For source package access, uncomment the following line" >> /etc/apt/sources.list
#echo "# deb-src http://old.kali.org/kali moto main non-free contrib" >> /etc/apt/sources.list



echo "Starting the update"
sudo apt-get update

echo "Placing git repos into /opt"
cd /opt
sudo git clone https://github.com/Tib3rius/AutoRecon.git
sudo git clone https://github.com/rebootuser/LinEnum.git
sudo git clone https://github.com/3ndG4me/AutoBlue-MS17-010.git
sudo git clone https://github.com/tennc/webshell.git
sudo git clone https://github.com/dreadlocked/Drupalgeddon2.git
sudo git clone https://github.com/jivoi/pentest.git ./offsecfw
sudo gem install text-table
sudo gem install highline

pip3 install -r AutoRecon/requirements.txt
echo "Starting the apt-get installations"
sudo apt install -y gobuster
#sudo apt install mingw-w64
#sudo apt install veil
sudo apt install -y sublist3r
sudo apt install -y seclists
sudo apt install -y ftp
sudo apt install -y p7zip-full
sudo apt install -y exiftool
echo "updating the db"
sudo updatedb
