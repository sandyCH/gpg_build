mkdir ~/Downloads
cd ~/Downloads
version=gnupg-2.2.13
wget https://gnupg.org/ftp/gcrypt/gnupg/$version.tar.bz2
wget https://gnupg.org/ftp/gcrypt/gnupg/$version.tar.bz2.sig
tar xf $version.tar.bz2
cd $version
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y libldap2-dev
sudo apt-get install -y gtk+-2
sudo apt-get install -y rng-tools
sudo apt-get install -y libbz2-dev
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y libgnutls28-dev  #note libgnutls30 avail, not -dev
sudo apt-get install -y libsqlite3-dev
sudo apt-get install -y libreadline-dev
sudo apt-get install -y pcscd scdaemon
sudo apt-get install -y pinentry-tty
sudo make -f build-aux/speedo.mk INSTALL_PREFIX=/usr/local speedo_pkg_gnupg_configure='--enable-g13 --enable-wks-tools --with-pinentry-pgm=/usr/bin/pinentry-tty' native
sudo ldconfig
