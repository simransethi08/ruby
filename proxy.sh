#!/bin/bash
echo type your name
read name
prompt="Enter Password:"
while IFS= read -p "$prompt" -r -s -n 1 char 
do
    if [[ $char == $'\0' ]];     then
        break
    fi
    if [[ $char == $'\177' ]];  then
        prompt=$'\b \b'
        password="${password%?}"
    else
        prompt='*'
        password+="$char"
    fi
done
var= echo $prompt | sed 's/\@/%41/g;s/\!/%21/g;s/\#/%23/g;s/\$/%24/g;s/\&/%26/g;s/*/%2A/g;s/(/%28/g;s/)/%29/g;s/+/%B/g;s/\[/%5B/g;s/\]/%5D/g;s/:/%3A/g;s/;/%3B/g;s/=/%3D/g;s/?/%3F/g;s/\//%2F/g' > /dev/nul
export https_proxy=https://$name:$var@hjproxy.persistent.co.in:8080
export http_proxy=http://$name:$var@hjproxy.persistent.co.in:8080
