watch="${args[--watch]}"
repeat="${args[--repeat]}"
tags=(${args[tag]})

# Clean up the tags array by replacing \\~ with \~
for i in "${!tags[@]}"; do
  tags[$i]=${tags[$i]//\\~/\~}
done

# Zip the tags array with --tag prefix for each element
for tag in "${tags[@]}"; do
  rspec_args+=(--tag "$tag")
done

if [[ $watch ]]; then
  run_watch respec tagged "${tags[@]}"
elif [[ $repeat ]]; then
  run_repeat respec tagged "${tags[@]}"
else
  banner "tagged ${tags[*]}"
  reset_status

  run_rspec ${rspec_args[@]}
fi
