#!/usr/bin/env bash

# Backend - Lumen build
git clone https://github.com/nrhvyc/checkmeout-lumen.git /home/vagrant/Code/checkmeout-lumen

# Frontend
git clone https://github.com/nate437/checkmeout-frontend.git /home/vagrant/Code/checkmeout-frontend
( cd /home/vagrant/Code/checkmeout-lumen/ && composer install )

( cd /home/vagrant/Code/checkmeout-frontend/ && npm install --no-bin-links )
# ( cd /home/vagrant/Code/checkmeout-frontend/ && npm install typescript -g )
# ( cd /home/vagrant/Code/checkmeout-frontend/ && npm install ts-loader webpack@^1.12.6 node-sass css-loader sass-loader style-loader react@^15.3.1 react-dom react-router --no-bin-links )

# ( cd /home/vagrant/Code/checkmeout-frontend/ && webpack )
