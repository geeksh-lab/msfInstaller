#!/bin/bash
UID_ROOT=$((0x0))
binfile=/usr/bin
config_dir=/etc/


declare -a require_lib
require_lib=(
"curl"
"ruby2.*"


)
declare -r require_lib

function :start: {
if [[ ${UID} -eq $UID_ROOT ]];
then
	return ${UID}
else
	echo "[Trusted] this installer require administrator privileges Use sudo su to log as root and reload"
	{
	 `su`
 }
fi

}

function :requirePkg: {
 local loc_dir
 
 
 loc_dir=$binfile
 
 for lib in ${require_lib[@]} ; do
	 
		 if [ -z $(find $loc_dir -name $lib )]
			then 
			sudo apt-get install $lib
	 	 else
			 echo "$lib already install"
		fi
	done

}

#function for metasploit install
function :msfdownload: {
echo "Download  Metasploit please wait .............."
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
#and
 chmod 755 msfinstall && \
./msfinstall
}


fudge() {

    local char="▇"
    local Limite_rate=100
    local stater=0
    local status=""
    [[ -n $2 ]] && {
        sleep $2
    }|| {
        echo "rock yourself "
        return 0
    }
    [[ -n $3 ]] && echo "$3..."
    echo -en "$b_CGSC|"
    while [ $Limite_rate -gt $1 ] ; do
        printf  "$char" && sleep $2
        starter=$((starter +1))
        if [[  $starter -eq $1 ]] ; then
            echo -en "|   100 % [done] $CDEF"
            echo
            return 0
        fi
    done

}

