# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sumit/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# aliases
alias ls='ls --color=auto'
alias vim='nvim'
alias vi='nvim'
alias gs='git status'
alias icat="kitty +kitten icat"
alias lcat="lolcat"


# Zsh autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


# Load nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# ~/.zshrc
eval "$(starship init zsh)"

export EDITOR=vim

export PATH=$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH

echo ""
echo ""
echo ""

COLUMNS=$(tput cols)
title1="████████╗███████╗██████╗ ███╗   ███╗██╗███╗  ██╗ █████╗ ██╗     "
title2="╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║████╗ ██║██╔══██╗██║     "
title3="   ██║   █████╗  ██████╔╝██╔████╔██║██║██╔██╗██║███████║██║     "
title4="   ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║██║╚████║██╔══██║██║     "
title5="   ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚███║██║  ██║███████╗"
title6="   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚══╝╚═╝  ╚═╝╚══════╝"
printf "%*s\n" $(((${#title1}+$COLUMNS)/2)) "$title1" $(((${#title2}+$COLUMNS)/2)) "$title2" $(((${#title3}+$COLUMNS)/2)) "$title3" $(((${#title4}+$COLUMNS)/2)) "$title4" $(((${#title5}+$COLUMNS)/2)) "$title5" $(((${#title6}+$COLUMNS)/2)) "$title6" | lolcat

echo ""
echo ""

#COLUMNS=$(tput cols)
#titlename="Sumit Kumar Soni"
#printf "\e[3m%*s\n\e[0m" $(((${#titlename}+$COLUMNS)/2)) "$titlename" | lolcat


#lf icons
export LF_ICONS="\
tw=:\
st=:\
ow=:\
dt=:\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:\
"
