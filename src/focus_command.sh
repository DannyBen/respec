watch="${args[--watch]}"
repeat="${args[--repeat]}"

if [[ $watch ]]; then
  run_watch "respec focus"
elif [[ $repeat ]]; then
  run_repeat respec focus
else
  banner "focus"
  run_rspec --tag focus
fi
