#!/bin/bash

echo '检测hy2定时任务'
(crontab -l | grep -F "run_hy2" && echo "定时任务存在") || (crontab -l; echo "*/2 * * * * bash ~/s-box/run_hy2.sh" | crontab - && echo '设置定时任务成功')

