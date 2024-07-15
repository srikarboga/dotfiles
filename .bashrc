# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

#color prompt
force_color_prompt=yes

#prompt
PS1='\[\033[01;31m\]\u\[\033[01;32m\]@\[\033[01;34m\]\h \[\033[01;33m\]\w \[\033[01;35m\]$(git branch 2>/dev/null | grep "*" | cut -d " " -f2) \[\033[01;36m\]\$ \[\033[00m\]'

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
. "$HOME/.cargo/env"
