#!/bin/bash

# Write CSV header in new file
echo "id,address,prefix" > assign.csv

# Write DUID in file (adapt to own device)
# Running dhcpkit in verbose mode and running dhclient -6 interface
# on the client machine is a simple way to get the duid
echo -n "duid:000100011e2a70bd080027d59e74," >> assign.csv

# Write n addresses in file (adapt to own network)
for i in $(eval echo "{1..$1}");
do
  echo -n "fdde:dead:beef:1111::$i;" >> assign.csv
done
sed -i '$ s/.$//' assign.csv

# Write prefix in file (adapt to own network)
echo ",fdde:dead:beef:1111::/64" >> assign.csv
