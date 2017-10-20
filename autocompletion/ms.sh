command_dir(){
	current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
	commands_path="$current_dir"/commands-available/*
	echo $commands_path
}
_ms() 
{
	local cur 
	COMPREPLY=()
	cur="${COMP_WORDS[COMP_CWORD]}"
	prev="${COMP_WORDS[$COMP_CWORD-1]}"
	commands_path=$(command_dir)
	commands=$(for file in $commands_path; do a=${file##*/}; echo ${a%.*}; done)

#	if [[ ${prev} == gt ]]; then
#		COMPREPLY=( $(compgen -W "${commands}" -- ${cur}) )
#		return 0
#	fi
case "${prev}" in
	ms)
		COMPREPLY=( $(compgen -W "${commands}" -- ${cur}) )
		return 0
		;;
	create-unit-test)
    cd $AD/repository/default/
		return 0
		;;
		

esac
}
complete -o default -F _ms ms 
