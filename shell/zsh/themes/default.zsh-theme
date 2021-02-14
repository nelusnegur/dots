# default.zsh-theme

# Use with a dark background and 256-color terminal!

function prompt_char {
  # %(!.#.$)
  echo "|"
}

function box_name {
  echo ${SHORT_HOST:-$HOST}
}

function current_time {
  date +"%R"
}

local current_time='$(current_time)'
local git_info='$(git_prompt_info)'
local prompt_char='$(prompt_char)'

PROMPT="${FG[239]}[${current_time}] ${FG[040]}%n${FG[239]}:${FG[033]}$(box_name)${FG[239]}:%B${FG[226]}%c%b ${git_info} ${FG[136]}${prompt_char}%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="(${FG[239]}%{$reset_color%}${FG[255]}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[202]}✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="${FG[040]}✔"
