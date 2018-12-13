# Description: Searh a string on your history
function remember { 
history | grep "${1}" ; 
}
