@echo Off
users; w; who
grep 'x:0:' /etc/passwd > /tmp/T1087.001.txt; cat /tmp/T1087.001.txt 2>/dev/null
lpq -a
groups