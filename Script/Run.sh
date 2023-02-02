#!/bin/bash
expect -c "
set timeout 10
spawn /home/actions-runner/config.sh --url $RUNNER_URL --token $RUNNER_TOKEN
expect -re \"Enter the name of the runner group to add this runner to:.*\"
send \"\n\"
expect  -re \"Enter the name of runner:.*\"
send \"\n\"
expect  -re \"Enter any additional labels.*\"
send \"\n\"
expect  -re \"Enter name of work folder:.*\"
send \"\n\"
expect \"#\"
exit 0
"
/home/actions-runner/run.sh