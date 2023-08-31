<?php
$ip = $argv[1];
// IP cam
$port = 80;
$port = 554;
$port = 8000;
$port1 = 80;
$port1 = 554;
$port2 = 554;
// ssh server
$port3 = 22;
// Domain Server
$port4 = 53;
// Network Printers
$port5 = 20;
$port5 = 21;
$port5 = 80;
$port5 = 289;
$port5 = 443;
// Windows Domain Server
$Win = 135; // windows7 or windows10 Domain member
// Server 2008 R2
$Win1 = 135;
$Win1 = 445;
// Server 2009 R2 Domain Controller
$Win2 = 53;
$Win2 = 88;
$Win2 = 135;
$Win2 = 389;
$Win2 = 445;
$Win2 = 464;
$Win2 = 593;
$Win2 = 636;
$Win2 = 3268;
$Win2 = 3269;
$Win2 = 5722;
$Win2 = 9389;
// Server 2016 Standalone
$Win3 = 135;
$Win3 = 139;
$Win3 = 445;
$Win3 = 5986;
// Server 2016 Domain Controller
$Win4 = 53;
$Win4 = 88;
$Win4 = 135;
$Win4 = 139;
$Win4 = 389;
$Win4 = 445;
$Win4 = 464;
$Win4 = 593;
$Win4 = 636;
$Win4 = 3268;
$Win4 = 3269;
$Win4 = 5985;
$Win4 = 9389;

if ($ip === "192.168.1.0") {
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.2.1'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.254.254'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.1.1'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.8.1'){
router();
echo "\033[0;33mCould be a Spectranet or Huawei Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.0.1'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '10.0.1.1'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.11.1'){
router();
echo "\033[0;33mBillion Electric Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '10.90.90.90'){
router();
echo "\033[0;33mD-Link Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.15.1'){
router();
echo "\033[0;33mD-Link Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.1.200'){
router();
echo "\033[0;33mHawking Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.1.254'){
router();
echo "\033[0;33mMight be a Gigabyte or Hawking Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.3.1'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.1.99'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.1.210'){
router();
echo "\033[0;33mLinksys Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.1.16'){
router();
echo "\033[0;33mLinksys Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.1.62'){
router();
echo "\033[0;33mMight be a Motorola Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.1.30'){
router();
echo "\033[0;33mMight be a Motorola Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.100.1'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.0.227'){
router();
echo "\033[0;33mNetgear Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.10.50'){
router();
echo "\033[0;33mNetComm: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.16.1'){
router();
echo "\033[0;33mMight be a Repotec or Linksys Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.123.254'){
router();
echo "\033[0;33mSitecom: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.168.168'){
router();
echo "Sonicwall Router: \033[0m\033[0;32m".$p."\n";
} elseif($ip === '192.168.0.3'){
router();
echo "\033[0;33mSonicwall Router: \033[0m\033[0;32m".$p."\n";
} elseif($ip === '192.168.0.254'){
router();
echo "\033[0;33mTP-Link: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '200.200.200.5'){
router();
echo "\033[0;33mTrendnet Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.223.100'){
router();
echo "\033[0;33mTrendnet Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.10.1'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.0.30'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '10.0.0.2'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.0.10'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '10.0.0.138'){
router();
echo "\033[0;33mCould be a Huawei Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.10.10'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.123.254'){
router();
echo "\033[0;33mU.S. Robotics: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.100.100'){
router();
echo "\033[0;33mZTE: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.10.50'){
router();
echo "\033[0;33mWireless Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.4.1'){
router();
echo "\033[0;33mZoom Router: \033[0m\033[0;32m".$ip."\n";
} elseif($ip === '192.168.33.1'){
sensor();
echo "\033[0;33mShelly motion sensor :\033[0m\033[0;32m".$ip."\n";
} elseif($pf = @fsockopen($ip,$port, $err, $err_string, 1))
{
$cmdcolor = exec('printf "\033[0;36m"');
echo $cmdcolor;
echo "   ____\n";
echo " __//\n";
echo "(O)_)\n";
$cmdcolor2 = exec('printf "\033[0m\n"');
echo $cmdcolor2;
echo "\033[0;33mIP cam: \033[0m\033[0;32m".$ip."\n";
} elseif($pf = @fsockopen($ip,$port1, $err, $err_string, 1)) { 
$cmdcolor = exec('printf "\033[0;36m"');
echo $cmdcolor;
echo "   ____\n";
echo " __//\n";
echo "(O)_)\n";
$cmdcolor2 = exec('printf "\033[0m\n"');
echo $cmdcolor2;
echo "\033[0;33mIP cam: \033[0m\033[0;32m".$ip."\n";
} elseif($pf = @fsockopen($ip,$port2, $err, $err_string, 1)) {
$cmdcolor = exec('printf "\033[0;36m"');
echo $cmdcolor;
echo "   ____\n";
echo " __//\n";
echo "(?)_)\n";
$cmdcolor2 = exec('printf "\033[0m\n"');
echo $cmdcolor2;
echo "\033[0;33mMight be an IP cam: \033[0m\033[0;32m".$ip."\n";
} elseif($pf = @fsockopen($ip,$port5, $err, $err_string, 1)) {
$cmdcolor = exec('printf "\033[0;36m"');
echo $cmdcolor;
echo "     _\n";
echo "   _[_]_\n";
echo "  |_——°_|\n";
$cmdcolor2 = exec('printf "\033[0m\n"');
echo $cmdcolor2;
echo "\033[0;33mIPP Printer: \033[0m\033[0;32m".$ip."\n";
} elseif($pf = @fsockopen($ip,$Win2, $err, $err_string, 1)) {
server();
echo "\033[0;33mServer 2009 R2 Domain Controller: \033[0m\033[0;32m".$ip."\n";
} elseif($pf = @fsockopen($ip,$Win4, $err, $err_string, 1)) {
server();
echo "\033[0;33mServer 2016 Domain Controller: \033[0m\033[0;32m".$ip."\n";
} elseif(
$pf = @fsockopen($ip,$Win3, $err, $err_string, 1)) {
server();
echo "\033[0;33mServer 2016 Standalone: \033[0m\033[0;32m".$ip."\n";
} elseif($pf = @fsockopen($ip,$Win1, $err, $err_string, 1)) {
server();
echo "\033[0;33mServer 2008 R2 Standalone: \033[0m\033[0;32m".$ip."\n";
} elseif($pf = @fsockopen($ip,$Win, $err, $err_string, 1)) {
server();
echo "\033[0;33mWindows(Domain member): \033[0m\033[0;32m".$ip."\n";
} elseif($pf = @fsockopen($ip,$port4, $err, $err_string, 1)) {
$cmdcolor = exec('printf "\033[0;36m"');
echo $cmdcolor;
echo "    __\n";
echo "(((|_°|)))\n";
echo "   |__|\n";
$cmdcolor2 = exec('printf "\033[0m\n"');
echo $cmdcolor2;
echo "\033[0;33mDomain|Gateway: \033[0m\033[0;32m".$ip."\n";
} else {
$cmdcolorUkn = exec('printf "\033[0;36m"');
echo $cmdcolorUkn;
echo " _____\n";
echo "|__?__|\n";
echo "  _|_\n";
$cmdcolor2 = exec('printf "\033[0m\n"');
echo $cmdcolor2;
echo "\033[0;33mUnknown: \033[0m\033[0;32m".$ip."\n";
}
function router() {
$cmdcolor = exec('printf "\033[0;36m"');
echo $cmdcolor;
echo " (((|_____\n";
echo "    |_____|\n"; 
$cmdcolor2 = exec('printf "\033[0m\n"');
echo $cmdcolor2;
}
function server() {
$cmdcolor = exec('printf "\033[0;36m"');
echo $cmdcolor;
echo " _____ ___\n";
echo "|_____||°|\n";
echo "  _|_  |_|\n";
$cmdcolor2 = exec('printf "\033[0m\n"');
echo $cmdcolor2;
}
function sensor() {
$cmdcolor = exec('printf "\033[0;36m"');
echo $cmdcolor;
echo "     ____\n";
echo "    __//\n";
echo "((( {__]\n";
$cmdcolor2 = exec('printf "\033[0m\n"');
echo $cmdcolor2;
}





