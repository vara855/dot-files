starship init fish | source

set HOMEBREW_NO_AUTO_UPDATE 1

#function fish_greeting
#   fortune -a | cowsay | lolcat
#end

function fish_greeting
 echo "Fish shell 🐠 🐟 🐡"  
end

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

set -gx JAVA_HOME (/usr/libexec/java_home -v 11.0.11)

function ll 
   exa -l -g --icons --group-directories-first $argv
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

alias code="code-insiders"
