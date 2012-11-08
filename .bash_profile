export PATH=$PATH:/Users/dani/.gem/ruby/1.8/bin:/opt/local/bin:/opt/local/sbin:/usr/local/git/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

#clicolors
export CLICOLOR=auto
#Android development
export PATH=$PATH:/Developer/android-sdk-mac_x86/tools:/Developer/android-sdk-mac_x86/platform-tools

#mongodb
export PATH=$PATH:/usr/local/mongodb/bin

#Mercurial settings
export HGEDITOR="mvim"
alias hc="hg add . ; hg commit"
alias hdb="hg extdiff -p opendiff $1 $2"
alias hp="hg push https://colhabitat.kilnhg.com/Repo/Repositories/Group/colhabitat"

#Git Settings

export GIT_EDITOR="vim"
alias gc='git add . ; git commit -a'
alias db='git difftool --tool=opendiff $1 $2'

#heroku
#alias hb='rvm use system ; heroku bundles:destroy colhabitat ; heroku bundles:capture colhabitat ; rvm use 1.9.2'

#Paths
alias railsdev='cd /Users/dani/Development/rails_project/'
alias cardeal='cd /Users/dani/Development/rails_project/Groupy'
alias autodeal='cd /Users/dani/Development/rails_project/getautodeal'
alias authy="cd /Users/dani/Development/authy"

#imageMagick
# export MAGICK_HOME="$HOME/ImageMagick-6.6.4"
# export PATH="$MAGICK_HOME/bin:$PATH"
# export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib"


#RVM
alias railsrc_rvm="rvm use 1.9.2@railsrc --create --rvmrc"

#authy
alias otp="ruby ~/mykey.rb"

#commanline vim
set -o vi

#authy

# Displays current git branch if in a git repository.
# Add to .bashrc or .bash_profile and restart bash or use `source` to enable
function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

function proml {
	local BLUE="\[\033[0;34m\]"
	# OPTIONAL - if you want to use any of these other colors:
	local RED="\[\033[0;31m\]"
	local LIGHT_RED="\[\033[1;31m\]"
	local GREEN="\[\033[0;32m\]"
	local LIGHT_GREEN="\[\033[1;32m\]"
	local WHITE="\[\033[1;37m\]"
	local LIGHT_GRAY="\[\033[0;37m\]"
	# END OPTIONAL
	local DEFAULT="\[\033[0m\]"

PS1="\h:\W \u$BLUE\$(parse_git_branch) $DEFAULT\$ "

}

proml

