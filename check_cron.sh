#!/bin/bash

echo '检测hy2定时任务'
(crontab -l | grep -F "screen") || (crontab -l; echo "ps aux|grep 'screen'|grep -v 'grep' || cd /home/kagero/s-box && screen -S box ./web run") | crontab -

