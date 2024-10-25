#!/bin/sh


save(){
	find . -type f |xargs ls -la| awk '{print "chmod "$1" "$NF}'>./filesPermissions.sh
}

restore(){ 
	if [ -e ./filesPermissions.sh ]
		then
		./filesPermissions.sh
	else
		echo "Error!"
		echo "the required script filesPermissions.sh does not exist in this folder"
		echo "this usually occurs if you have not run 'save' before or are trying from a difference directory from which it was orginally run"
	fi
}


PS3='Please enter your choice: '
options=("save existing permissions" "restore saved permissions" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            save
            ;;
        "Option 2")
            restore
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
