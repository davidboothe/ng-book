#Staging Container
FROM node:8.12.0

# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

RUN npm install -g @angular/cli

# add app
COPY . /usr/src/app

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "zsh"]
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

CMD ["zsh"]