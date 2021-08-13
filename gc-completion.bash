#/usr/bin/env bash

_gc_complete ()
{	
	cur="${COMP_WORDS[COMP_CWORD]}"
	if [ -z $cur ] || [ "${#cur} " -lt "4" ]; then
		return
	fi
	
	__git_complete_refs --track --cur=${cur}

	if [ "${#COMPREPLY}" -eq "0" ] ; then

	__git_complete_refs --remote="git@gitlab.com:inflo/audit.git" --cur=${cur}
	
	fi
	
}

complete -F _gc_complete gc gm