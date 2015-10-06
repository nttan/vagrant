echo "Provisioning virtual machine ............"
echo "Installing GIt"
apt-get install git -y > /dev/null

echo "Updating PHP repository"
    apt-get install python-software-properties build-essential -y > /dev/null
    add-apt-repository ppa:ondrej/php5 -y > /dev/null
    apt-get update > /dev/null
	
	echo "Installing PHP"
	sudo add-apt-repository ppa:eugenesan/ppa

sudo apt-get update

sudo apt-get install php5
    apt-get install php5-common php5-dev php5-cli php5-fpm -y > /dev/null
	sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt -y
    
    echo "Installing PHP extensions"
    apt-get install curl php5-curl php5-gd php5-mcrypt php5-mysql -y > /dev/null
	
	echo "Preparing MySQL"
	apt-get install debconf-utils -y > /dev/null
	debconf-set-selections <<< "mysql-server mysql-server/root_password password 123"
    debconf-set-selections <<< "mysql-server mysql-server/root_password_again password 123"
	
		echo "Installing MySQL"
	apt-get install mysql-server -y > /dev/null