#!/bin/bash
# Description: Open a file
function xopen { 
xdg-open "${1}" > /dev/null 2>&1 ; 
}
