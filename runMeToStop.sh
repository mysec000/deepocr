nohup ./stopAll.sh > stopAllOutput.txt 2> stopAllError.err &
echo $! > stopAll_pid.txt
history -c
