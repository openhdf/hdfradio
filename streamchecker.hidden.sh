#!/bin/sh

## copy to /usr/scripts, set permissions to 755 and use hotkey to execute ##

wget -q -O /tmp/.message.txt "http://127.0.0.1/web/message?text=Start%20streamchecker%20in%20background%20...&type=1&timeout=10" &  > /dev/null 2>&1

python /usr/lib/enigma2/python/Plugins/Extensions/HDFRadio/streamchecker

wget -q -O /tmp/.message.txt "http://127.0.0.1/web/message?text=Streamchecker%20done%20...&type=1" &  > /dev/null 2>&1

exit
