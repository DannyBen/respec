search="${args[search]}"
banner "except *$search*"
reset_status

# shellcheck disable=SC2046
run_rspec $( (find . -name '*_spec.rb' -not -path "*$search*" | grep .) || echo "-tnothing")
