if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

#echo ". /Users/jvsingh/anaconda2/etc/profile.d/conda.sh" >> ~/.bash_profile
#. /Users/jvsingh/anaconda2/etc/profile.d/conda.sh
# <<< conda init <<<
# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/jvsingh/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/jvsingh/anaconda3/etc/profile.d/conda.sh" ]; then
# . "/Users/jvsingh/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/jvsingh/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jvsingh/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jvsingh/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jvsingh/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jvsingh/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#Add for tensorflow 
export KMP_DUPLICATE_LIB_OK=TRUE

# added by Anaconda3 2019.07 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
# added by Anaconda3 2019.07 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/jvsingh/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/jvsingh/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jvsingh/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/jvsingh/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
