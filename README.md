# IP autocomplete plugin

Autocompletes IP addesses and hostnames for zsh from a set nmap gnmap file or simple text file.

## Install

Copy the plugin to the Oh-My-ZSH custom plugin directory
```
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/Lejurn/ip_autocomplete.plugin.zsh ip_autocomplete
vim ~/.zshrc
```

and add `ip_autocomplete` to the plugins array in your zshrc file

```
plugins=(... ip_autocomplete)
```

## How to use

Set the env variable `IP_FILE` to a .gnmap output file or to a simple IP text file:

```
export IP_FILE=/path/to/nmap_outpu_.gnmap
```

Example ip text file:

```
cat simple_ip_list.txt
127.0.0.1
192.168.1.1
firewall.example.com
```

```
export IP_FILE=/path/to/simple_ip_list.txt
```

## Aliases

- `grep_ipv4_nmap` grep all IPv4 adresses out of a .gnmap file
- `grep_ipv6_name` grep all IPv6 adresses out of a .gnmap file
