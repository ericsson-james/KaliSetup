echo  "Creating a backup of the sources.list and adding the rolling release regular repositories and source repositories"
sudo cp /etc/apt/sources.list /etc/apt/sources.list.BackUp
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" > /etc/apt/sources.list
echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list

echo "Starting the apt-get installations"
sudo apt install gobuster
sudo apt install empire
sudo apt install veil
sudo apt install seclists
