#!/usr/bin/env bash

git clone https://github.com/nrhvyc/checkmeout-lumen.git /home/vagrant/Code/checkmeout-lumen
git clone https://github.com/nate437/checkmeout-frontend.git /home/vagrant/Code/checkmeout-frontend
( cd /home/vagrant/Code/checkmeout-lumen/ && composer install )
