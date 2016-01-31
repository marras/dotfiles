# Prompts ----------------------------------------------------------
git_dirty_flag() {
    git status 2> /dev/null | grep -c : | awk '{if ($1 > 0) print " [+-]"}'
}

rvm_prompt() {
    if [ -d .git ] ;
    then
        rvmp=$(~/.rvm/bin/rvm-prompt)
        echo "[$rvmp]"
    fi
}
story_id() {
    if [ -f tmp/.pivotal_story_id ] ;
    then
        echo "[#`cat "tmp/.pivotal_story_id"`]"
    fi
}

prompt_func() {
    previous_return_value=$?;

    prompt="\n\[\033]0;${USER} ${PWD}\007\]\[${COLOR_BLUE}\]\w ${COLOR_RED}$(rvm_prompt)${COLOR_GRAY}$(__git_ps1)${COLOR_GREEN}\]$(git_dirty_flag) $(story_id)\[${COLOR_NC}\]\n"

    if test $previous_return_value -eq 0
    then
        PS1="${prompt}> "
    else
        PS1="${prompt}\[${COLOR_RED}\]> \[${COLOR_NC}\]"
    fi
}
PROMPT_COMMAND=prompt_func

export PS2='> '    # Secondary prompt
export PS3='#? '   # Prompt 3
export PS4='+'     # Prompt 4
