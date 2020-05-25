zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zpm-zsh/dircolors-material", as:plugin

# zsh users
zplug "zsh-users/zsh-completions",              defer:0
zplug "zsh-users/zsh-autosuggestions",          defer:2, on:"zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting",      defer:3, on:"zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search", defer:3, on:"zsh-users/zsh-syntax-highlighting"

zplug romkatv/powerlevel10k, as:theme

Z_PATH=$(brew --prefix)/etc/profile.d
zplug "$Z_PATH", from:local, use:z.sh
