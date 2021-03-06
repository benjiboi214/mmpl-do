#! /bin/bash 

# Environment
PIP=$(which pip3)

function install_tendenci()
{
    # Install tendenci package
    echo "Installing tendenci" && echo ""
    cd "$TENDENCI_INSTALL_DIR"
    $PIP install tendenci --no-cache-dir
}

function install_dependencies()
{
    # Install python dependencies
    echo "Installing Production Deps" && echo ""
    $PIP install -r "$APP_CONFIG_DIR"/requirements/prod.txt --upgrade --no-cache-dir
}

install_tendenci
install_dependencies