export PS1='\[\033[01;31m\]\u\[\033[00m\]@\[\033[01;32m\]\h\[\033[00m\]:\w\$ '
# Clean ANSI color codes for standard printing
RED='\033[01;31m'
GREEN='\033[01;32m'
RESET='\033[00m'

clear
echo -e "${RED}  ██████╗ ██████╗ ███████╗${GREEN}██████╗  ██████╗ ██╗  ██╗"
echo -e "${RED} ██╔═══██╗██╔══██╗██╔════╝${GREEN}██╔══██╗██╔═══██╗╚██╗██╔╝"
echo -e "${RED} ██║   ██║██████╔╝███████╗${GREEN}██████╔╝██║   ██║ ╚███╔╝ "
echo -e "${RED} ██║   ██║██╔═══╝ ╚════██║${GREEN}██╔══██╗██║   ██║ ██╔██╗ "
echo -e "${RED} ╚██████╔╝██║     ███████║${GREEN}██████╔╝╚██████╔╝██╔╝ ██╗"
echo -e "${RED}  ╚═════╝ ╚═╝     ╚══════╝${GREEN}╚═════╝  ╚═════╝ ╚═╝  ╚═╝"
echo -e "${RESET} ==================================================="
echo -e " [ BusyBox Loaded | Environment: Ops ]"
echo -e " ==================================================="
ifconfig | awk '/^[a-zA-Z0-9]/ {ifname=$1} /inet addr:/ {print ifname "\n  " substr($2,6); ifname=""}'