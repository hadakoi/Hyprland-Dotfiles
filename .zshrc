# ================================================================
# Powerlevel10k Instant Prompt (keep at top)
# ================================================================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ================================================================
# Oh My Zsh
# ================================================================
export ZSH="$HOME/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# ================================================================
# Powerlevel10k Theme
# ================================================================
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# ================================================================
# Zoxide (Correct Arch method)
# ================================================================
eval "$(zoxide init zsh)"

# ================================================================
# Autosuggestions
# ================================================================
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#ffb380'
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# ================================================================
# Syntax Highlighting (MUST BE LAST)
# ================================================================
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
