#!/bin/bash

echo '检测hy2定时任务'
(crontab -l | grep -F "screen" && echo "定时任务存在") || (crontab -l; echo "ps aux|grep 'screen'|grep -v 'grep' || cd /home/kagero/s-box && screen -S box ./web run" | crontab - && echo '设置定时任务成功')

