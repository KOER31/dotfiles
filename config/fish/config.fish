# ~/.config/fish/config.fish

# Отключение истории команд
set -g fish_history none
set -U fish_greeting ""  # Убираем приветствие Fish

# Запуск fastfetch при старте терминала
if status is-interactive
    fastfetch
end

# алиасы для Arch
alias update='sudo pacman -Syu'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias search='pacman -Ss'
alias orphans='pacman -Qtdq'
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'
alias mirrors='sudo reflector --latest 5 --country Russia --sort rate --save /etc/pacman.d/mirrorlist'

# Цветовая схема
set fish_color_normal brwhite
set fish_color_command bd93f9
set fish_color_quote CE7DD6
set fish_color_redirection CE7DD6
set fish_color_end white
set fish_color_error red
set fish_color_param E6AADE
set fish_color_host bd93f9
set fish_color_operator bd93f9
set fish_color_user bd93f9
set fish_color_escape bd93f9
set info_color bd93f9
