function _ip_completions() {
	local -a ip_list
	case "$IP_FILE" in
	    *.gnmap )
	        ip_list=($(grep -oP "Host: \K[\w\d\.\:]+" ${IP_FILE} | sort -u))
		;;
	    *)
		ip_list=($(cat $IP_FILE))
        esac
	_multi_parts : "(${ip_list})"
}

function _hostname_completions(){
	local -a host_list
	case "$IP_FILE" in
	    *.gnmap )
	        host_list=($(grep -oP "Host: [\w\d\.\:]+ \(\K[\w\d\.]+" ${IP_FILE}| sort -u))
		;;
	    *)
		;;
        esac
	_multi_parts : "(${host_list})"
}

zstyle ':completion:*' completer _complete _ip_completions _hostname_completions

alias grep_ipv4_nmap='grep -oP "Host: \K\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"' 
alias grep_ipv6_nmap='grep -oP "Host: \K[\d\w\:]+"' 
