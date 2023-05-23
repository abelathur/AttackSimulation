@echo off
users; w; who
grep 'x:0:' /etc/passwd > /tmp/T1087.001.txt; cat /tmp/T1087.001.txt 2>/dev/null
lpq -a
groups
if [ -f "/etc/syslog.conf" ]; then sed -i '$ a #art_test_1562_006_2' /etc/syslog.conf; fi; if [ -f "/etc/rsyslog.conf" ]; then sed -i '$ a #art_test_1562_006_2' /etc/rsyslog.conf; fi; if [ -f "/etc/syslog-ng/syslog-ng.conf" ]; then sed -i '$ a #art_test_1562_006_2' /etc/syslog-ng/syslog-ng.conf; fi
mkdir /var/tmp/.hidden-directory; echo "T1564.001" > /var/tmp/.hidden-directory/.hidden-file
ENCODED=$(echo 'Hello from Atomic Red Team test T1140!' | xxd -ps -c 256); printf $ENCODED | xxd -r -p; echo $ENCODED | xxd -r -p; echo $(echo $ENCODED) | xxd -r -p; echo $ENCODED > /tmp/T1140.encoded && xxd -r -p /tmp/T1140.encoded; echo $ENCODED > /tmp/T1140.encoded && xxd -r -p < /tmp/T1140.encoded; echo $ENCODED > /tmp/T1140.encoded && cat /tmp/T1140.encoded | xxd -r -p; echo $ENCODED > /tmp/T1140.encoded && cat < /tmp/T1140.encoded | xxd -r -p
ENCODED=$(echo 'Hello from Atomic Red Team test T1140!' | base64); printf $ENCODED | base64 -d; echo $ENCODED | base64 -d; echo $(echo $ENCODED) | base64 -d; echo $ENCODED > /tmp/T1140.encoded && base64 -d /tmp/T1140.encoded; echo $ENCODED > /tmp/T1140.encoded && base64 -d < /tmp/T1140.encoded; echo $ENCODED > /tmp/T1140.encoded && cat /tmp/T1140.encoded | base64 -d; echo $ENCODED > /tmp/T1140.encoded && cat < /tmp/T1140.encoded | base64 -d; bash -c "{echo,\"$(echo $ENCODED)\"}|{base64,-d}"
xclip -o
test -e $HOME/victim-gzip.txt && gzip -k $HOME/victim-gzip.txt || (echo 'confidential! SSN: 078-05-1120 - CCN: 4000 1234 5678 9101' >> $HOME/victim-gzip.txt; gzip -k $HOME/victim-gzip.txt)
mkdir -p staged && echo $PWD/staged
userdel butter
sudo usermod -a -G groupname username