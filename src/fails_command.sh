watch="${args[--watch]}"
repeat="${args[--repeat]}"

if [[ $watch ]]; then
  run_watch "respec fails"
elif [[ $repeat ]]; then
  run_repeat respec fails
else
  banner "failed specs"
  run_rspec --next-failure
fi
