FROM markadams/chromium-xvfb-js:latest

RUN apt update && apt install -y curl apt-transport-https && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt update && apt install -y yarn && apt install openssh-client -y
    
# helps nodejs to display colors
ENV FORCE_COLOR=true
