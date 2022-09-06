# Lock into Python venv
source ~/py310/bin/activate

# Set display environment variable to [IP]:0 for VcXsrv or Xming
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

# Put display variable command where Containers can access
echo "export DISPLAY=${DISPLAY}" > ~/data/display.sh

# Force graphics rendering onto Windows-side
export LIBGL_ALWAYS_INDIRECT=1

# Put info on GNU screens. Get .screenrc from: https://raw.githubusercontent.com/wmwong/dotfiles/master/screenrc
export SCREENDIR=$HOME/.screen

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

# Launch Jupyter on a GNU screen
nohup /usr/local/sbin/jn >/dev/null 2>&1

# Make bash prompt "sophisticated" https://raw.githubusercontent.com/rhopfer/bash-prompt/master/bash_prompt.sh
. ~/.bash_prompt


cd ~/github/

