# INSTALL

```
curl -sSL https://github.com/liziqiang/lrzsz/raw/master/install.sh | sh -
```

# CONFIG
```
# set up iterm2 trigger

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
# Wait for the coprocess indicator to disappear
```
