search="${args[search]}"
watch="${args[--watch]}"
repeat="${args[--repeat]}"

if [[ $watch ]]; then
  run_watch "respec except $search"
elif [[ $repeat ]]; then
  run_repeat respec except "$search"
else
  banner "except *$search*"
  reset_status

  # shellcheck disable=SC2046
  run_rspec $( (find . -name '*_spec.rb' -not -path "*$search*" | grep .) || echo "-tnothing")
fi