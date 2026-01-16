#!/bin/bash

LOGFILE="../logs/system_health.log"
REPORT="../reports/health_report_$(date +%F_%T).txt"

echo "System Health Report - $(date)" | tee -a "$REPORT"

./cpu_monitor.sh | tee -a "$REPORT"
./memory_monitor.sh | tee -a "$REPORT"
./disk_monitor.sh | tee -a "$REPORT"
./service_monitor.sh | tee -a "$REPORT"

echo "-----------------------------------" | tee -a "$REPORT"

