FROM markadams/chromium-xvfb-js:latest

CMD curl -o- -L https://yarnpkg.com/install.sh | bash
CMD source ~/.bashrc
