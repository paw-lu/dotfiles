# Convenience functions

add_kernel() {
    # Add the active environment as a Jupyter kernel
    # Assumes python and ipykernel is installed
    # Args: kernel_name
    if [ "$#" -ne 1 ]; then
        echo "❓ Illegal number of parameters"
        echo "Expected 1 parameter -- the kernel name"
        return 1
    fi
    local KERNEL_NAME="$1"
    if python -m ipykernel install --user --name="${KERNEL_NAME}"; then
        echo "🌽 Kernel ${KERNEL_NAME} created"
        return 0
    else
        echo "Kernel creation failed"
        return 1
    fi
}

del_kernel() {
    # Remove a kernel from Jupyter
    # Assumes python and jupyterlab is installed
    # Args: kernel_name
    if [ "$#" -ne 1 ]; then
        echo "❓ Illegal number of parameters"
        echo "Expected 1 parameter -- the kernel name"
        return 1
    fi
    local KERNEL_NAME="$1"
    if jupyter kernelspec uninstall "${KERNEL_NAME}"; then
        echo "🗑 Kernel ${KERNEL_NAME} removed"
        return 0
    else
        echo "❌ Kernel removal failed"
        return 1
    fi
}

make_venv() {
    # Make a new Python venv
    # Assumes Python, virtualenv, and pyenv are installed
    # Args:
    #    prompt name (optional): By default set to ".venv"
    #    directory name (optional): By default set to ".venv"
    if [ "$#" -gt 2 ]; then
        echo "❓ Too many paremeters"
        echo "Expected 2 optional parameters -- the prompt and directory name"
        return 1
    else
        local PROMPT_NAME="${1:-.venv}"
        local DIRECTORY="${2:-.venv}"
    fi
    if virtualenv --python="$(pyenv which python)" --prompt="${PROMPT_NAME}" "${DIRECTORY}"; then
        echo "📦 $(python --version) virtual environment created in $(pwd)/${DIRECTORY}"
        return 0
    else
        echo "❌ Virtual environment creation failed"
        return 1
    fi
}

activate_venv() {
    # Activate a Python virtual environment
    # Args:
    #    directory name (optional) By default is set to ".venv"
    if [ "$#" -gt 1 ]; then
        echo "❓ Too many paremeters"
        echo "Expected 1 optional parameter -- the directory name"
        return 1
    fi
    local DIRECTORY="${1:-.venv}"
    if source "${DIRECTORY}/bin/activate"; then
        echo "📦 $(python --version) virtual environment in $(pwd)/${DIRECTORY} activated"
        return 0
    else
        echo "❌ Virtual environment activation failed"
        return 1
    fi
}

write() {
    # Run one or more bash commands, pipe to file, and open it
    # Args:
    #   COMMAND: The command whose output will be piped to the file
    "$@" | tee /temp/write.text
    code /tmp/write.txt
}

loop() {
    # Run a command every second until canceled
    # Args:
    #   COMMAND: The command which will be repeated
    while :; do
        "$@"
        sleep 1
    done
}

header() {
    # Print out an underlined header
    # Args:
    #   TITLE: The title of the header
    local TITLE="$@"
    echo
    echo
    echo "${TITLE}"
    echo "------------------------------------------"
}

upgrade_announcement() {
    # Print out an announcement that the package manager is upgrading
    # Args:
    #   NAME: The name of the package manager updating its packages
    #   ICON (optional): An emoji to symbolize the package manager
    local NAME="$1"
    local ICON="$2"
    echo
    echo "${ICON} Upgrading ${NAME} packages"
}

status() {
    # Check if command succeeds
    # Args:
    #   NAME: The name of the package manager updating its packages
    #   ICON (optional): An emoji to symbolize the package manager
    local NAME="$1"
    echo
    echo "$NAME"
    echo "--------"
    if "$@"; then
        echo
        echo "${NAME} PASS"
    else
        echo
        echo "${NAME} FAIL"
    fi
}

upgrade() {
    # Update packages
    upgrade_announcement "Homebrew" "🍺"
    local BREW="$(status brew upgrade)"
    upgrade_announcement "pipx" "🆇"
    local PIPX="$(status pipx upgrade-all)"
    upgrade_announcement "poetry" "📝"
    local POETRY="$(status poetry self update)"
    upgrade_announcement "pip" "📦"
    local PIP="$(status pip install --upgrade pip)"
    upgrade_announcement "conda" "🐍"
    local CONDA="$(status conda update -y conda)"
    upgrade_announcement "Oh My Zsh" "🅉"
    local OMZ="$(status upgrade_oh_my_zsh)"
    echo
    echo
    echo "Status"
    echo "=============================================="
    for output in $BREW $PIPX $POETRY $PIP $CONDA $OMZ; do
        echo
        echo "$output"
    done
}

# Pip uninstall all packages
alias pip_uninstall_all="pip freeze --local | xargs pip uninstall -y"
