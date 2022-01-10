# pl -> xflux -l 51.246452 -g 22.568445
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

### pyenv automatically loaded
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\033[01;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w\[\033[00m\]\[\e[91m\]\n\$(parse_git_branch)\[\e[00m\]\[\033[01;34m\] \$\[\033[00m\] "


# Change brightness
alias bright='xrandr --output HDMI-1 --brightness 1.6'
# Docker shortcuts
alias d_rm_containers='sudo docker rm $(sudo docker ps -a -q)'
alias d_stop_all='sudo docker stop $(sudo docker ps -a -q)'
alias d_rm_images='docker rmi $(sudo docker images -q)'
# NordVPN
alias vpn_tcp_usa='sudo openvpn /etc/openvpn/ovpn_tcp/us1301.nordvpn.com.tcp.ovpn'
alias vpn_udp_usa='sudo openvpn /etc/openvpn/ovpn_udp/us1301.nordvpn.com.udp.ovpn'
alias vpn_tcp_pl='sudo openvpn /etc/openvpn/ovpn_tcp/pl33.nordvpn.com.tcp.ovpn'
alias vpn_udp_pl='sudo openvpn /etc/openvpn/ovpn_udp/pl33.nordvpn.com.udp.ovpn'

###################################
#function remove_pyc {
#find . -name "*.pyc" -exec rm '{}' ';'
#}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
 
# i3 change wallpaper feh --bg-scale /path/to/image.file



#function remove_pyc {
#find . -name "*.pyc" -exec rm '{}' ';'
#}
