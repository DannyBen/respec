watch="${args[--watch]}"
repeat="${args[--repeat]}"

if [[ $watch ]]; then
  run_watch "respec continue"
elif [[ $repeat ]]; then
  run_repeat respec continue
else
  banner "continue"
  ## alternative (but it won't run failed specs)
  ## run_rspec --tag last_run_status:unknown
  run_rspec --tag ~last_run_status:passed
fi
