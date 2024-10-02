#!/bin/bash


usage() {
    echo "Usage: $0"
    echo "Select an option:"
    echo "1. Show processes by CPU usage"
    echo "2. Show processes by memory usage"
    exit 1
}

show_cpu() {
    echo -e "\nProcesses sorted by CPU usage (using tasklist):\n"

    tasklist | sort -k 8 -r | head -n 11
}


show_memory() {
    echo -e "\nProcesses sorted by Memory usage:\n"
    tasklist | sort -k 8 -r | head -n 11
}

echo "Select an option:"
echo "1. Show processes by CPU usage"
echo "2. Show processes by memory usage"


read -rp "Option (1 or 2): " option


case $option in
    1)
        show_cpu
        ;;
    2)
        show_memory
        ;;
    *)
        echo "Invalid option. Please choose 1 or 2."
        usage
        ;;
esac
