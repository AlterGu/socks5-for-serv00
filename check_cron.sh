#!/bin/bash

echo '检测hy2定时任务'
(crontab -l | grep -F "web run" && echo "定时任务存在") || (crontab -l; echo "bash run_hy2.sh " | crontab - && echo '设置定时任务成功')

