#!/bin/bash

return_non_zero() {
  echo 'returning non-zero code'
  return 31;
}

return_non_zero

echo 'still not exited setting "-e"'

# AFTER setting -e, if a function or command returns non-zero exit code
# the shell script will immediately exit with the same code.
set -e

return_non_zero

echo 'this line should not be executed'