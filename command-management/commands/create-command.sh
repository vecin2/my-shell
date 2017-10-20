#!/bin/bash


create_exec_bash(){
	printf "#!/bin/bash\n\n" > "$file_path".sh
	chmod +x "$file_path".sh
} 
add_to_autocomplete(){
	ln -sfv "$1" 
}

if [ $# -ne 1 ]; then
	echo Usage:
	echo "Enter commond path"
fi
file_path=$1
directory=${file_path%/*}
file_name=${file_path##*/}

echo Creating commanmd "$file_name" in "$directory"
mkdir -p "$directory"
create_exec_bash "$file_path"
#add_to_autocomplete "$file_path"
vi "$file_path".sh
