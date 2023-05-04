#!/bin/sh
echo "-----  Starting argo...----- "
Token=${Token:-'eyJhIjoiZDFhMWQxNGExNzU1MmFhMTM1Y2NiMmQ2YjdkMjIzOTYiLCJ0IjoiZjhiYTliZjYtNjJlMC00NWQ1LWI2YjItMjI1OTFkZmFhMzgxIiwicyI6Ik1tRTRPRGRoTkRNdE9HRXlOUzAwWkdRM0xXRmhaakl0WldSaVlUVXlPRFV6T1dReCJ9'}

# 启动 web.sh 脚本
nohup ./web.sh run ./config.json >/dev/null 2>&1 &
# 启动 cloudf.sh 脚本
./cloudf.sh tunnel --edge-ip-version auto run --token $Token

echo "----- 系统进程...----- ."
ps -ef

echo "----- 系统信息...----- ."
cat /proc/version
