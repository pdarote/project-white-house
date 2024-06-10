#!/bin/bash

# Function to print available options
print_options() {
    echo
    echo "Available options:"
    echo "  - morningside_up        to docker-compose up -f docker-compose.morningside.yml"
    echo "  - morningside_down      to docker-compose down -f docker-compose.morningside.yml"
    echo "  - whitehouse_up         to docker-compose up -f docker-compose.whitehouse.yml"
    echo "  - whitehouse_down       to docker-compose down -f docker-compose.whitehouse.yml"
}

morningside_up() {
    echo "🚀 Starting Morningside..."
    docker-compose -f docker-compose.morningside.yml up -d
}

morningside_down() {
    echo "🛑 Stopping Morningside..."
    docker-compose -f docker-compose.morningside.yml down
}

whitehouse_up() {
    echo "🚀 Starting Whitehouse..."
    docker-compose -f docker-compose.whitehouse.yml up -d
}

whitehouse_down() {
    echo "🛑 Stopping Whitehouse..."
    docker-compose -f docker-compose.whitehouse.yml down
}

# Check if argument is provided
if [ $# -eq 0 ]; then
    echo "❌ No options specified."
    print_options
else
    is_valid_option=false
    for arg in "$@"; do
        if [[ "$(type -t $arg)" == "function" ]]; then
            "$arg"
        else
            echo "❌ Invalid option: $arg"
            is_valid_option=true
        fi
    done
    if [ "$is_valid_option" = true ]; then
        print_options
    fi
fi
