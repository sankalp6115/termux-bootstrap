#!/usr/bin/env bash
set -e

echo "Starting Termux Bootstrap Process..."
chmod +x ./01-system.sh
chmod +x ./02-packages.sh
chmod +x ./03-ssh.sh
chmod +x ./04-directories.sh
chmod +x ./05-config.sh
chmod +x ./06-services.sh
chmod +x ./07-apps.sh
chmod +x ./08-opt-packages.sh

run_step(){
    echo 
    echo "======= $1 ======="
    "./$1"
}
run_step 01-system.sh
run_step 02-packages.sh
run_step 03-ssh.sh
run_step 04-directories.sh
run_step 05-config.sh
run_step 06-services.sh
run_step 07-apps.sh
run_step 08-opt-packages.sh

echo "Bootstrap process complete!"
