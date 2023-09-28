


#!/bin/bash
source /root/.virtualenvs/auto_token/bin/activate

echo '激活 env'

N=10  # 设置要执行的次数

for ((i=1; i<=N; i++))
do
    nohup python /home/xenminer/miner.py >> miner 2>&1 & echo $! > miner.pid
    echo "miner $i 线程执行"
done
