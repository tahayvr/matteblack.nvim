#!/bin/bash
#
# Theme Test File for Bash
# This file contains various shell script syntax elements.
#

# --- Comments ---
# This is a standard comment.
# TODO: Add error handling for the curl command.

# --- Variables and Constants ---
GREETING="Hello from Bash!"
readonly PI=3.14

# --- Functions ---
function greet_user() {
  # $1 is a positional parameter
  echo "$GREETING Your name is $1."
}

# Function call
greet_user "Admin"

# --- Command Substitution ---
CURRENT_DATE=$(date +"%Y-%m-%d")
echo "Today's date is $CURRENT_DATE"

# --- Control Flow ---
# @conditional: if/then/else
if [ -n "$GREETING" ]; then
  echo "Greeting is not empty."
else
  echo "Greeting is empty."
fi

# @conditional: case statement
case "$1" in
  start)
    echo "Starting service..."
    ;;
  stop)
    echo "Stopping service..."
    ;;
  *)
    echo "Usage: $0 {start|stop}"
    exit 1
    ;;
esac

# @repeat: for loop
for i in {1..3}; do
  echo "Loop iteration: $i"
done

# --- Arrays ---
my_array=("apple" "banana" "cherry")
echo "The first fruit is: ${my_array[0]}"

# --- Heredoc ---
cat << EOF
This is a heredoc.
It allows for multi-line strings.
The value of PI is ${PI}.
EOF

# --- Deliberate Syntax Error ---
# Remove the '#' to test LSP diagnostics
# if [ 1 -eq 1 ] then
#   echo "Missing semicolon or newline"
# fi
