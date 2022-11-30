banner "delete status file"
if [[ -f "$RESPEC_STATUS_FILE" ]]; then
  reset_status
  echo "deleted $RESPEC_STATUS_FILE"
else
  echo "file not found: $RESPEC_STATUS_FILE"
fi
