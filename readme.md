# Laravel Homestead

The official Laravel local development environment.

Official documentation [is located here](http://laravel.com/docs/homestead).

### Custom Instructions:

1. Make sure you've installed both Virtualbox and Vagrant
2. On the command line (gitbash/terminal/etc.) run:
```
vagrant box add laravel/homestead
vagrant box add laravel/homestead https://atlas.hashicorp.com/laravel/boxes/homestead
```
3. Then, navigate to where you want the configuration files to exist.
  * This is arbitrary. Doesn't really matter.
  * Here, run:
  ```
  git clone https://github.com/Jessehuze/Orangestead.git
  ```
  * Then, inside the cloned folder there are two files: init.bat and init.sh
  ```
  Windows: run ./init.bat
  Mac/Linux: run ./init.sh
  ```
4. Once this is completed, run:
```
ssh-keygen -t rsa -C "you@homestead"
```
  * Just mash yes or enter through all of the prompts. The defaults are what we want.
5. Now, you need to add the "domains" for Nginx to your local hosts files.
  1. Windows: The file is usually in C:\Windows\System32\drivers\etc\hosts
  2. Mac/Linux: /etc/hosts
  3. For both, add the following line to that file:
  ```
  192.168.10.10 homestead.app
  ```
6. Once all of these steps have been completed, you can now start Vagrant.
  1. Inside the Orangestead folder, run:
  ```
  vagrant up
  ```
  2. Once this completes, you should be able to open your web browser and go to: http://homestead.app
  3. What you see is the clone from the master @ https://github.com/Jessehuze/se-group8.git
