#! bash oh-my-bash.module

source "$OSH/themes/powerline-icon/powerline-icon.base.sh"

PROMPT_CHAR=${POWERLINE_PROMPT_CHAR:=""}
POWERLINE_LEFT_SEPARATOR=${POWERLINE_LEFT_SEPARATOR:=""}

USER_INFO_SSH_CHAR=${POWERLINE_USER_INFO_SSH_CHAR:=" "}
USER_INFO_THEME_PROMPT_COLOR=0
USER_INFO_THEME_PROMPT_SECONDARY_COLOR="-"
USER_INFO_THEME_PROMPT_COLOR_SUDO=202

PYTHON_VENV_CHAR=${POWERLINE_PYTHON_VENV_CHAR:="❲🐍❳ "}
CONDA_PYTHON_VENV_CHAR=${POWERLINE_CONDA_PYTHON_VENV_CHAR:="❲c❳ "}
PYTHON_VENV_THEME_PROMPT_COLOR=35

SCM_NONE_CHAR=""
SCM_GIT_CHAR=${POWERLINE_SCM_GIT_CHAR:=" "}
SCM_THEME_PROMPT_CLEAN=""
SCM_THEME_PROMPT_DIRTY=""
SCM_THEME_PROMPT_CLEAN_COLOR=25
SCM_THEME_PROMPT_DIRTY_COLOR=88
SCM_THEME_PROMPT_STAGED_COLOR=30
SCM_THEME_PROMPT_UNSTAGED_COLOR=76
SCM_THEME_PROMPT_COLOR=${SCM_THEME_PROMPT_CLEAN_COLOR}

RVM_THEME_PROMPT_PREFIX=""
RVM_THEME_PROMPT_SUFFIX=""
RBENV_THEME_PROMPT_PREFIX=""
RBENV_THEME_PROMPT_SUFFIX=""
RUBY_THEME_PROMPT_COLOR=161
RUBY_CHAR=${POWERLINE_RUBY_CHAR:="❲r❳ "}

CWD_THEME_PROMPT_COLOR=#d5bd12

LAST_STATUS_THEME_PROMPT_COLOR=52
LAST_STATUS_THEME_PROMPT_COLOR_SUCCESS=#e50578

CLOCK_THEME_PROMPT_COLOR=240

BATTERY_AC_CHAR=${BATTERY_AC_CHAR:="⚡"}
BATTERY_STATUS_THEME_PROMPT_GOOD_COLOR=70
BATTERY_STATUS_THEME_PROMPT_LOW_COLOR=208
BATTERY_STATUS_THEME_PROMPT_CRITICAL_COLOR=160

THEME_CLOCK_FORMAT=${THEME_CLOCK_FORMAT:="%H:%M:%S"}

IN_VIM_THEME_PROMPT_COLOR=245
IN_VIM_THEME_PROMPT_TEXT="vim"

POWERLINE_PROMPT=${POWERLINE_PROMPT:="user_info scm python_venv ruby cwd"}

function _omb_theme_PROMPT_COMMAND { __powerline_prompt_command "$@"; }
_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
