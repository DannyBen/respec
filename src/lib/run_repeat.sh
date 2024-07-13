run_repeat() {
  : "${CLEAR:=clear}"

  while true; do
    # Run in a clear screen
    $CLEAR
    "$@" || true
    echo

    # Wait for key press
    read -n 1 -s -r -p "Press any key to rerun or 'q' to quit..." key
    
    # Flush the input buffer
    while read -r -n 1 -s -t 0.1; do :; done
    
    # Quit on q
    if [ "$key" = 'q' ]; then
      echo
      break
    fi
  done
}
