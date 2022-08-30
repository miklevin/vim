source ~/py310/bin/activate
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
export LIBGL_ALWAYS_INDIRECT=1
export XCURSOR_SIZE=48

echo "export DISPLAY=${DISPLAY}" > ~/data/display.sh
cd ~/github/
alias profile="vim ~/.bash_profile"
alias github="cd ~/github"
alias journal="vim ~/github/journal/journal.md"
alias systemd="cd /etc/systemd/system/"
alias data="cd ~/data"
alias system="ps --no-headers -o comm 1"
alias sbin="cd /usr/local/sbin/"
alias open="explorer.exe ."
alias lxme="lxc exec GlookingLass -- su --login ubuntu"
alias lx="lxc ls --fast"
. ~/.bash_prompt
