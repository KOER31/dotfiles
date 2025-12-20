function fish_prompt
    # Цвета
    set -l normal (set_color normal)
    set -l user_color (set_color bd93f9)
    set -l dir_color (set_color CE7DD6)
    
    # Собираем prompt - только пользователь и директория
    echo -n -s $user_color (whoami) $normal " "
    echo -n -s $dir_color (prompt_pwd) $normal " "
end
