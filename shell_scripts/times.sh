#/bin/zsh
AWAKE_TIME=$(date '+%s') &
betterlockscreen -l &
systemctl suspend &
SUSPEND_TIME=$(date '+%s') 

DAYS=$((($SUSPEND_TIME - $AWAKE_TIME)/86400))
HOURS=$((($SUSPEND_TIME - $AWAKE_TIME)%86400/3600))
MINUTES=$((($SUSPEND_TIME - $AWAKE_TIME)%3600/60))
SECONDS=$((($SUSPEND_TIME - $AWAKE_TIME)%60))

echo $AWAKE_TIME
echo $SUSPEND_TIME
echo "Sleep for ${DAYS}d ${HOURS}h ${MINUTES}m ${SECONDS}s"
