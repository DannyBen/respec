watch="${args[--watch]}"
repeat="${args[--repeat]}"

if [[ $watch ]]; then
  run_watch "respec all"
elif [[ $repeat ]]; then
  run_repeat respec all
else
  reset_status
  banner "all"
  run_rspec
fi
