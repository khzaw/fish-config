set fish_greeting ""
set -U EDITOR emacs

set -x ANDROID $HOME/Library/Android/sdk
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x ANDROID_PLATFORM_TOOLS $ANDROID_SDK/platform-tools

set -x PYENV_ROOT $HOME/.pyenv

# set -x JAVA_HOME /usr/libexec/java_home -v 1.8
set -gx JAVA_HOME (/usr/libexec/java_home -v 1.8)

# PATH
set -x PATH $HOME/.bin
set PATH $PATH $PYENV_ROOT/shims                                 # Pyenv/Python
set PATH $PATH $HOME/.local/bin                                # Pipsi

set PATH $PATH $HOME/Library/Android/sdk/tools				   # Android
set PATH $PATH $HOME/Library/Android/sdk/platform-tools        # Android
set PATH $PATH /usr/local/opt/go/libexec/bin                   # Go
set PATH $PATH /usr/local/bin
set PATH $PATH /usr/local/sbin
set PATH $PATH /usr/bin
set PATH $PATH /usr/sbin
set PATH $PATH /bin
set PATH $PATH /sbin
# set PATH $PATH /Developer/usr/bin

set -x NVM_DIR $HOME/.nvm

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f $HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.fish ]; and . $HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f $HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.fish ]; and . $HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.fish

test -x (which aws_completer); and complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'