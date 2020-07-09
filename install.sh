#!/usr/bin/env zsh

echo "Installing..."

hash rz > /dev/null 2>&1
if [ $? -eq 1 ]; then
    brew install lrzsz
fi

recv='/usr/local/bin/iterm2-recv-zmodem.sh'
send='/usr/local/bin/iterm2-send-zmodem.sh'

curl -sSL https://github.com/liziqiang/lrzsz/raw/master/iterm2-recv-zmodem.sh -o "$recv"
curl -sSL https://github.com/liziqiang/lrzsz/raw/master/iterm2-send-zmodem.sh -o "$send"

chmod +x "$recv" "$send"

echo "Done!
#After install you should set up iterm2 trigger

# Set up Triggers in iTerm 2 like so:
#     Regular expression: \*\*B0100
#     Action: Run Silent Coprocess
#     Parameters: /usr/local/bin/iterm2-send-zmodem.sh

#     Regular expression: \*\*B00000000000000
#     Action: Run Silent Coprocess
#     Parameters: /usr/local/bin/iterm2-recv-zmodem.sh
# To send a file to a remote machine:

# Type "rz" on the remote machine
# Select the file(s) on the local machine to send
# Wait for the coprocess indicator to disappear
# The receive a file from a remote machine

# Type "sz filename1 filename2 … filenameN" on the remote machine
# Select the folder to receive to on the local machine
# Wait for the coprocess indicator to disappear"
