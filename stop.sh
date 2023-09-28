#!/bin/bash

ps -ef | grep miner.py | grep -v grep | awk '{print $2}' | xargs kill -9
echo "已关闭所有miner"
