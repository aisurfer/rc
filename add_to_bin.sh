!#/bin/bash

echo Add several commands to make them working in vim shell

sudo echo -e "!/bin/bash\ngrep --color=auto -rnIH --exclude=*.pyc --exclude=*.sw[po] $@" > /usr/bin/gre
chmod 777 /usr/bin/gre
