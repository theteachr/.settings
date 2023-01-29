#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# opam configuration
test -r /home/theteachr/.opam/opam-init/init.sh && . /home/theteachr/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
