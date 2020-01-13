FROM node
RUN npm i -g lighthouse \
  && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | tee /etc/apt/sources.list.d/google-chrome.list \
  && apt-get update \
  && apt install google-chrome-stable -y \
  && mkdir output \
  && chmod o+w output
USER node
