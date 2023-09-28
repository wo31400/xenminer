
#!/bin/bash

N=31  # 设置要执行的次数

for ((i=1; i<=N; i++))
do
    logfile="miner_$i.log"
    pidfile="miner_$i.pid"
    nohup python3 /home/xenminer/miner.py >> "$logfile" 2>&1 & echo $! > "$pidfile"
    echo "miner $i 线程执行，日志文件：$logfile，PID 文件：$pidfile"
done
