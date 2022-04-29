gdbus monitor -y -d org.freedesktop.login1 |
 ( while read x; do
    printf "$x\nReuqest Processed\n\n\n\n"
    case "$x" in
      *"{'LockedHint': <true>}"*) echo "Screen Locked";;
      *"{'LockedHint': <false>}"*) kill -9 `cat train_pid.txt`;;
      *"Unlock"*) kill -9 `cat train_pid.txt`;;
    esac
  done)
