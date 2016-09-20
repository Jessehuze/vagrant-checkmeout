#!/usr/bin/env bash

# Backend - Lumen build
git clone https://github.com/nrhvyc/checkmeout-lumen.git /home/vagrant/Code/checkmeout-lumen

# Frontend
git clone https://github.com/nate437/checkmeout-frontend.git /home/vagrant/Code/checkmeout-frontend
( cd /home/vagrant/Code/checkmeout-lumen/ && composer install )

( cd /home/vagrant/Code/checkmeout-frontend/ && sudo npm install --no-bin-links )
( cd /home/vagrant/Code/checkmeout-frontend/ && sudo npm install webpack -g )
( cd /home/vagrant/Code/checkmeout-frontend/ && webpack )
