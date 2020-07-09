#!/usr/bin/env zsh

hash rz > /dev/null 2>&1
if [ $? -eq 1 ]; then
    brew install lrzsz
fi

recv='/usr/local/bin/iterm2-recv-zmodem.sh'
send='/usr/local/bin/iterm2-send-zmodem.sh'

curl -sSL https://github.com/liziqiang/lrzsz/raw/master/iterm2-recv-zmodem.sh -o "$recv"
curl -sSL https://github.com/liziqiang/lrzsz/raw/master/iterm2-send-zmodem.sh -o "$send"

chmod +x "$recv" "$send"
