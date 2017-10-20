#!/bin/bash

. ./config/config.sh

list_commands(){
	 for i in $(find ./ -type d -name commands);
	 do 
		 for file in $i/*; 
		 do 
			 echo $file
		 done
	 done

}
for command in $(list_commands);
do 
	target=$MS_PATH/${command#./}
	commands_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
	source="$commands_path"/../commands-available/
  echo Refreshing "$target"	
	ln -sfv "$target" "$source"
done
	 
