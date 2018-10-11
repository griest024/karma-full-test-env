FROM markadams/chromium-xvfb

RUN apt update && apt install -y gpg

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt update && apt install -y node apt-transport-https openssh-client git && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt update && apt install -y yarn build-essential

# helps nodejs to display colors
ENV FORCE_COLOR=true
