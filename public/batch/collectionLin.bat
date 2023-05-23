@echo Off
xclip -o
test -e $HOME/victim-gzip.txt && gzip -k $HOME/victim-gzip.txt || (echo 'confidential! SSN: 078-05-1120 - CCN: 4000 1234 5678 9101' >> $HOME/victim-gzip.txt; gzip -k $HOME/victim-gzip.txt)
mkdir -p staged && echo $PWD/staged