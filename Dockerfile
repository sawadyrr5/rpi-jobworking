FROM resin/rpi-raspbian:jessie

RUN sudo apt-get install -y nodejs \
    npm install pm2 -g \
    pm2 startup \
    apt-get install git -y \
    npm install typescript -g \
    git clone https://github.com/nrck/PoplarServer.git \
    cd PoplarServer/
    tsc \
    npm install --production \
    pm2 start process.json \
    cd \
    git clone https://github.com/nrck/KotoriAgent.git \
    cd KotoriAgent/
    tsc \
    npm install --production \
    pm2 start process.json \
    cd \
    git clone https://github.com/nrck/MahiruServer.git \
    cd MahiruServer/
    tsc \
    npm install --production \
    pm2 start process.json
    
