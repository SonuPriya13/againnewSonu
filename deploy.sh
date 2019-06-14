#!/bin/sh
ssh deploy@13.58.140.96 <<EOF
cd /home/tom1 

git pull
npm install --production
pm2 restart all
exit       
EOF
