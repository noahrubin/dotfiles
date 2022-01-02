# Make new directory with mkdir and cd to it
mkcdir () 
{ 
    local PATH="${1:-HOME}";
    if ! [ -e "${PATH}" ]; then
        if ! ( /usr/bin/mkdir -p "${PATH}" ); then
            error "Failed to create directory ${PATH}"
            return 1;
        fi;
    fi;
    cd "${PATH}"
}
