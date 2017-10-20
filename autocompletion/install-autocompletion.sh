. ./config/config.sh 

if [ -z "$AD" ]; then
	echo Global variable AD has not been set. Please set it before install it.
	exit
else
	sudo ln -sfv "$MS_PATH"/autocompletion/ccadmin.sh /etc/bash_completion.d/ccadmin
	sudo ln -sfv "$MS_PATH"/autocompletion/ms.sh /etc/bash_completion.d/ms
fi 
