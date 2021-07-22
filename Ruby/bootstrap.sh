sudo apt-get update
sudo apt-get -y upgrade

sudo apt-get install git
git config --global user.name "adriacustico"
git config --global user.email "adriacustico@gmail.com"

sudo apt install curl
\curl -sSL https://get.rvm.io | bash
echo 'source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
source /home/vagrant/.rvm/scripts/rvm

sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs

rvm requirements
rvm install ruby
ruby -v
rvm --default use 3.7.2

gem install rails
rails -v

sudo apt-get install npm
sudo npm install --global yarn
