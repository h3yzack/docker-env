#!/bin/bash

echo 'Backup MongoDB Database...'

timestamp() {
  date +"%Y%m%d-%H%M%S"  # current time
}

# DB name is expensaku
ffname="expensaku_$(timestamp).gz"


docker exec my-mongo sh -c 'exec mongodump -d expensaku --gzip --archive' > ./shared/dbbackup/${ffname}
