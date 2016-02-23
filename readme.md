# Laravel Homestead

The official Laravel local development environment.

Official documentation [is located here](http://laravel.com/docs/homestead).

Custom Instructions:

Make sure you've installed virtualbox
  1) On the command line (gitbash/terminal/etc.) run:
    a) vagrant box add laravel/homestead
    b) vagrant box add laravel/homestead https://atlas.hashicorp.com/laravel/boxes/homestead
  2) Then, navigate to where you want the configuration files to exist.
    -This is arbitrary. Doesn't really matter.
    a) Here, run git clone https://github.com/Jessehuze/Orangestead.git
    b) Then, inside the cloned folder there are two files: init.bat and init.sh
      i) Windows: run ./init.bat
      ii) Mac/Linux: run ./init.sh
  3) Once this is completed, run:
    a) ssh-keygen -t rsa -C "you@homestead"
      i) Just mash yes or enter through all of the prompts. The defaults are what we want.
  4) Now, you need to add the "domains" for Nginx to your local hosts files.
    a) Windows: The file is usually in C:\Windows\System32\drivers\etc\hosts
    b) Mac/Linux: /etc/hosts
    c) For both, add the following line to that file:
      i) 192.168.10.10 homestead.app
  5) Once all of these steps have been completed, you can now start Vagrant.
    a) Inside the Orangestead folder, run:
      i) vagrant up
    b) Once this completes, you should be able to open your web browser and go to:
      i) http://homestead.app
    c) What you see is the clone from the master @ https://github.com/Jessehuze/se-group8.git
