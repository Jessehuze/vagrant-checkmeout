#!/usr/bin/env bash

git clone https://github.com/nrhvyc/checkmeout-lumen.git /home/vagrant/Code/
git clone https://github.com/nate437/checkmeout-frontend.git /home/vagrant/Code
( cd /home/vagrant/Code/checkmeout-lumen/ && composer install )
