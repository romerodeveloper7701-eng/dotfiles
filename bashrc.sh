export STARSHIP_CONFIG="$HOME/dotfiles/starship.toml"
eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(fzf --bash)"

fastfetch() { command fastfetch --logo-type file-raw --logo ~/dotfiles/logo.txt --logo-padding-top 8 --logo-padding-left 2 "$@"; }
fastfetch
