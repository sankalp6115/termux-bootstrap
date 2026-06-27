eval "$(starship init zsh)"

[[ -o interactive ]] && fastfetch
setopt NO_NOTIFY

alias python='python3.11'
alias pip='pip3.11'

if [[ -o interactive && -n "$SSH_CLIENT" ]]; then
    read -r client_ip client_port server_port <<< "$SSH_CLIENT"

    termux-media-player play "$HOME/system_scripts/login.mp3" >/dev/null 2>&1
    termux-notification \
        --title "SSH Login" \
        --content "${client_ip}:${client_port} SSHed to server" \
        >/dev/null 2>&1

    mkdir -p "$HOME/log"

    printf '[%s] %s:%s logged in\n' \
        "$(date '+%Y-%m-%d %H:%M:%S')" \
        "$client_ip" \
        "$client_port" >> "$HOME/log/ssh_login.log"
fi

