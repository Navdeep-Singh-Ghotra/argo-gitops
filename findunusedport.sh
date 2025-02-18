for port in $(seq 8000 9000); do
  (echo > /dev/tcp/localhost/$port) >/dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo "Port $port is unused"
    #break
  fi
done