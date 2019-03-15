if [ $(pwd) = / ]; then
	echo "
	You are in chroot jail and this script works in it!!!
	ls command is also working
"
fi
