#!/bin/bash

# Program to output a system information page

TITLE="System Information Report For $HOSTNAME"
CURRENT_TIME="$(date +"%x %r %z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"

report_uptime() {
	cat <<_EOF_
        <h2>System Uptime</h2>
        <pre>$(uptime)</pre>
_EOF_
	return
}

report_disk_space() {
	cat <<_EOF_
        <h2>Disk Space Utilization</h2>
        <pre>$(df -h)</pre>
_EOF_
	return
}

report_home_space() {
    local format="%8s%10s%10s\n" 
    local i dir_list total_files total_dirs total_size user_name
    
    if [[ "$(id -u)" -eq 0 ]]; then 
        dir_list=/home/*
        user_name="All Users" 
    else 
        dir_list="$HOME" 
        user_name="$USER"
    fi 
    
    echo "<h2>Home Space Utilization ($user_name)</h2>"

    for i in $dir_list; do 
        total_files="$(find "$i" -type f | wc -l)"
        total_dirs="$(find "$i" -type d | wc -l)" 
        total_size="$(du -sh "$i" | cut -f 1)" 
        
        echo "<H3>$i</H3>" 
        echo "<pre>" 
        printf "$format" "Dirs" "Files" "Size" 
        printf "$format" "----" "-----" "----" 
        printf "$format" "$total_dirs" "$total_files" "$total_size"
        echo "</pre>" 
    done 
    return
}

cat <<_EOF_
<html> 
    <head> 
        <title>$TITLE</title> 
    </head> 
    <body> 
        <h1>$TITLE</h1> 
        <p>$TIMESTAMP</p> 
        $(report_uptime)
        $(report_disk_space)
        $(report_home_space)
    </body> 
</html>
_EOF_
