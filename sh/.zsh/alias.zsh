#!/bin/zsh
#alias emacs="emacs -nw"
alias "cd.."="cd ../"
alias ag="ag"
alias :q="sudo systemctl poweroff"
alias ae="vim ~/.zsh/environment.zsh && source ~/.zsh/environment.zsh; pushd ~/DOTS; git commit -m 'added new env vars' ~/DOTS/zsh/.zsh/environment.zsh;  git push; popd"
alias aee="ec ~/.zsh/environment.zsh && source ~/.zsh/environment.zsh; pushd ~/DOTS; git commit -m 'added new env vars' ~/DOTS/zsh/.zsh/environment.zsh;  git push; popd"
alias ale="ec ~/.zsh/alias.zsh && source ~/.zsh/alias.zsh; pushd ~/DOTS; git commit -m 'added aliases' ~/DOTS/zsh/.zsh/alias.zsh;  git push; popd"
alias bace='rsync -aaxv --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/boot/*","/opt/*","/usr/*","/bin/*","/sbin"} /etc /run/media/aleph/A/REC/etc$(date +%m%y)'
alias bach='rsync -aaxv --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/boot/*","/opt/*","/usr/*","/bin/*","/sbin"} /home /run/media/aleph/A/REC/home$(date +%m%y)'
alias bacu="bach; bace"
alias bud="ec $LEDGER_FILE"
alias clbin="curl -f 'clbin=<-' https://clbin.com"
alias cp="cp -r"
alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
alias ec="emacsclient -c --alternate-editor="
alias sec="emacsclient -c --alternate-editor="
alias ce="emacsclient -nw --alternate-editor="
alias ecc="cd ~/.emacs.d && ec ~/.emacs.d/init.el"
alias eco="ec ~/.emacs.d/lisp/init-org.el"
alias emac="ec ~/.emacs.d/init.el"
alias eth='sudo netctl start ethernet-dhcp'
alias gb='gemset && sd && rm -r _site && bundle exec jekyll serve'
alias gdot="pushd ~/.zsh/ && ./gdot && popd"
alias gmor="nix-shell -p python35Packages.pyperclip --run 'pushd ~/TMP/PROG/M/; ~/TMP/PROG/M/goodmorning.py; popd'"
alias gt="git add .; git commit -am '$(date +%y%m%d)'; git push -u origin master"
alias ll="ls -lahf --color=auto"
alias lsl="ls -lhf --color=auto"
alias lss="ls -hf --color=auto"
alias mixer="alsamixer"
alias mkdir="mkdir -p"
alias mkdir="mkdir -p"
alias mou="devmon -a"
alias orge='ec ~/.emacs.d/lisp/orgmode.org'
alias psef="ps -ef"
alias pref="ec ~/ORG/pref.org"
alias rbt="sudo reboot"
alias rmrf="rm -rf"
alias road="ec ~/ORG/road.org"
alias ru='setxkbmap ru'
alias scp="scp -r"
alias sch="ec ~/ORG/schedule.org"
alias shtd='sudo shutdown -h now'
alias sprunge="curl -f 'sprunge=<-' http://sprunge.us"
alias fixtime="sudo ntpdate pool.ntp.org; sudo hwclock --systohc"
alias sude="sudo -e"
alias systemctl="sudo systemctl"
alias tempwatch="while :; do sensors; sleep 1 && clear; done;"
alias term="urxvtc -hold -e " #used for run menu
#alias tm="tmux -2 attach-session -d"
alias tm="tmux new-session -A -s main"
alias mux= "tmuxinator "
alias tor='sudo chroot --unserspec=tor:tor /opt/torchroot /usr/bin/tor'
alias torb='cd /home/aleph/DLD/tor-browser_en-US/; /home/aleph/DLD/tor-browser_en-US/start-tor-browser.desktop'
alias trans='transmission-daemon && iceweasel http://localhost:9091/'
alias transk='sudo killall transmission-daemon'
alias unm="devmon -u"
alias up="cd ../"
alias upd='sudo nixos-rebuild switch --upgrade'
alias updk='sudo mkinitcpio -p linux-libre'
alias wsnet='pushd /home/aleph/h/conf && ./wsnet.sh && popd'
alias x='startx'
alias xclip='xclip -selection c'
alias xsel="xsel -b"
alias za="zathura --fork"
alias zz="quit"
alias ан='setxkbmap us'
email() {
	echo $3 | mutt -s $2 $1
}
# colorized cat
#c() {
#  for file in "$@"
#  do
#    pygmentize -o style=sourcerer -f console256 -g "$file"
#  done
#}
## colorized less
#l() {
#  pygmentize -o style=sourcerer -f console256 -g $1 | less -r
#}
# nullpointer url shortener

# Helpers

short() {
  curl -f"shorten=$*" https://0x0.st
}

gdir() {
  for var in $@
  do
    if [ -d "$HOME/$var" ]; then
      cd $HOME/$var
      git add --all
      echo "Comment for $var:"
      read comment
      git commit -a -m "$comment"
      git push
    elif; then
      echo "No such directory: $var"
    fi
  done
}

org2docx() { pandoc --bibliography=/home/aleph/WERKE/HW/BIO/bio.bib\
             --csl=/home/aleph/TMP/HW/council-of-science-editors.csl\
             -i $1 -o $1-pandoc.docx }
# Notes

alias arb="ec $BLOG_DIR/stories/arbeit.org "
alias snts="pushd ~/DOTS/zsh/.scripts/;./notes;popd"
alias pnts="pushd ~/DOTS/zsh/.scripts/;./scans;popd"
alias spnts="snts; pnts"
alias nte="ec ~/WERKE/sdll.github.io/stories/notes.org"
alias gnts="gdir ORG/NOTES"
alias sho="rename 's/^(.{25}).*(\..*)$/$1$2/' *"
alias lk="ec /home/aleph/WERKE/sdll.github.io/pages/trove.org"
# Blog
alias dn="deploy 'added notes'"
alias nbw="workon nikola; nikola auto; deactivate"
alias nbb="nikola build"
alias ng="workon nikola; cd $BLOG_DIR; nikola github_deploy -m 'Yet another weblog update.'; deactivate"
alias nd="workon nikola; nikola github_deploy -m 'umu update'; deactivate"
alias nna="cd $BLOG_DIR; workon nikola; nikola new_post -e -f orgmode; deactivate"
alias nnp="cd $BLOG_DIR; workon nikola; nikola new_post -e -p -f orgmode; deactivate"
alias na="workon nikola; nikola new_post -e -f orgmode; deactivate"
alias np="workon nikola; nikola new_post -e -p -f orgmode; deactivate"
alias nik="workon nikola"
alias nli="ec $BLOG_DIR/stories/links_math.org"
alias sw="stack build; stack exec site rebuild; stack exec site watch"

# Haskell

alias sb="stack build;"

# Org
alias tupd="~/DOTS/zsh/.scripts/telegram"
alias dira="ec ~/.dirabbrev; pushd ~/DOTS; git commit -m 'added directory abbreviations' ~/DOTS/docs/.dirabbrev;  git push; popd"
alias sc="scrot '%Y-%m-%d_$wx$h.png' -s -e 'mv $f ~/TMP/SCR/'"
alias le="~/DOTS/zsh/.scripts/letters"
alias lat="latexmk -pvc -pdf"
alias tse="ec ~/TMP/PROG/M/"
alias i3c="ec ~/DOTS/i3/.config/i3/config"
alias sty="ec $HOME/texmf/tex/latex/local/sdll.sty"
alias sfs="ec $BLOG_DIR/files/assets/demos/sfscore.tsv"
alias aug="ec $BLOG_DIR/stories/agenda.org"
alias mik="ec $BLOG_DIR/stories/mikveh.org"
alias hmu="pkill -2 -u $UID mu # send SIGINT"
alias we="curl wttr.in"
function ns() { nix-env -qa \* -P | fgrep -i "$1"; }
alias ni="ec ~/DOTS/nixos/configuration.nix; sudo nixos-rebuild switch"
alias nb="sudo nixos-rebuild switch"
# Config

alias zac="ec ~/.config/zathura/zathurarc"

# umu

alias uag="ec $UMU_DIR/stories/agenda.org"
alias ut="ec $UMU_DIR/stories/utumu.org"
alias uma="ec $DOTS/mutt/.mutt/aliases"
alias ug="gcam "$(date +%y%m%d)" & gp"

# lib
alias saw='cd ~/TMP/PROG/SAGE; sage --notebook="jupyter"'
alias sa='ec ~/TMP/SAGE/workbook.org'
#sway
function fk () {readlink -f $1 | xclip}

# define da and immediately call it to initialize the environment.
function da () { eval `~/.scripts/dirabbrev -e -a \$*`; }
da -d
alias S='da -s'
alias G='da -g'
alias L='da -l'
alias R='da -r'

#eless
alias eless="/home/aleph/PROG/eless/eless"