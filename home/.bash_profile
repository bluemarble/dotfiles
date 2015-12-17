export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/X11/bin
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/Tools/oclint/bin"
export PATH="$PATH:$HOME/Tools/jruby/bin"

source ~/.bashrc

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/paul/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/paul/google-cloud-sdk/completion.bash.inc'

# Add tab completion for SSH hostnames based on ~/.ssh/config
[[ -e "$HOME/.ssh/config" ]] && complete -o "default" \
    -o "nospace" \
    -W "$(grep "^[Hh]ost" ~/.ssh/config | \
    grep -v "[?*]" | cut -d " " -f2 | \
    tr ' ' '\n')" scp ssh

complete -o "default" -o "nospace" -W "\
   clone init add mv reset rm bisect grep log show status branch checkout \
   commit diff merge rebase tag fetch pull push" \
   git
