#!/bin/bash


#This function lists TCP opened TCP ports on host
function srcdirpatch
{
        
}

# This function shows existing ip addresses and names in asked network
function dstdirpatch 
{
        

}

# This condition for written for display a list of possible keys and their description.
if [[ "$#" == "0" ]]
then
        echo "For this script actually next arguments:"
        echo -e "\033[32m For display the IP addresses and symbolic names of all hosts in the current subnet use argument --srcdirpatch"
        echo -e "\033[33m For display a list of open system TCP ports use  argument --dstdirpatch (example ./script_a.sh --target 192.168.1.*"
        echo -e "\033[0m"
        exit 0
fi


# Block  of script where is checking conditions of input parameter.
if [ "$1" == "--srcdirpatch" ]
then
        srcdirpatch

elif [ "$1" == "--dstdirpatch" ]
then
        dstdirpatch $2
fi