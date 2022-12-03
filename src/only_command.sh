search="${args[search]}"
watch="${args[--watch]}"

if [[ $watch ]]; then
  run_watch "respec only $search"
else
  banner "only *$search*"
  reset_status

  # shellcheck disable=SC2046
  run_rspec $( (find . -name '*_spec.rb' -path "*$search*" | grep .) || echo "-tnothing")
fi