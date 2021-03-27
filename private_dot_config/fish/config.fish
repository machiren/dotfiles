starship init fish | source

set -x PATH ~/.local/bin $PATH

set -x PATH $HOME/.nodebrew/current/bin $PATH

set -x PATH /Library/Frameworks/Python.framework/Versions/3.8/bin:{$PATH}

set -x PATH /usr/local/opt/mysql@5.7/bin $PATH

complete -c aws -f -a '(
    begin
        set -lx COMP_SHELL fish
        set -lx COMP_LINE (commandline)
        aws_completer
    end
)'
