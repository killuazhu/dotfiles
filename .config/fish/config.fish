
# Map caps lock to esc
if uname -a | grep -q -i linux && test -f ~/.Xmodmap
	xmodmap - <~/.Xmodmap
end

# alias cat 'bat'
alias vim 'nvim'

# set vim as default editor
set --export EDITOR vim
set --export GIT_EDITOR vim

## Abbreviations
abbr c 'code .'
abbr g 'git'
abbr k 'kubectl'

abbr gd 'git diff'
abbr gds 'git diff --staged'
abbr gc 'git commit -m'
abbr gcmm 'git checkout --amend -m'
abbr gcm 'git checkout master'
abbr gcgp 'git checkout gh-pages'
# abbr gca 'git commit --all'
abbr gcam 'git commit -am'
abbr gcp 'git cherry-pick'
abbr gl 'git log --oneline --decorate'
# abbr gg 'git log --graph --date=relative'
# abbr ggg 'git show --name-only'
abbr ga 'git add'
abbr gad 'git add .'
abbr gap 'git add --patch'
# abbr gu 'git add --update'
# abbr gan 'git add --intent-to-add'
abbr gco 'git checkout'
abbr gcb 'git checkout -b'
abbr gb 'git branch'
abbr gbd 'git branch -D'
abbr gp 'git push origin HEAD'
# abbr gpf 'git push origin HEAD --force-with-lease'
abbr gpl 'git pull'
abbr gsl 'git stash list'
abbr gst 'git status'
abbr gs 'git status --short --branch'
abbr gsi 'git status --short --branch --ignored'
abbr gsh 'git show'

# direnv hook fish | source
# starship init fish | source


add_to_user_path /usr/local/go/bin

config-yubikey-gpg-and-ssh
init_pyenv
