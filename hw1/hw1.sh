if [ ! -f ~/jail/bin/bash ] || [ ! -d ~/jail/lib ] || [ ! -d ~/jail/lib64 ] ; then
	mkdir ~/jail
	mkdir ~/jail/bin ~/jail/lib ~/jail/lib64
	cp /bin/bash ~/jail/bin
	cp /bin/ls ~/jail/bin
	bash_need=$(ldd /bin/bash)			#Needed files for bash
	cp $bash_need ~/jail/lib
	cp $bash_need ~/jail/lib64
	clear
	ls_need=$(ldd /bin/ls)				#Needed files for ls
	cp $ls_need ~/jail/lib
	cp $ls_need ~/jail/lib64
	clear
fi

cp jailScript.sh ~/jail

sudo chroot ~/jail /bin/bash

