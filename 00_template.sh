#!/bin/bash

# Text for onboarding script
text()
{
cat <<- EOF
Include here text for onboarding script
EOF
}

# Commands for onboarding script
commands()
{
cat <<- EOF
Include here commands for onboarding script
EOF
}

main() {
	text
	commands
# Repeat as needed
}

# Main function
main
exit

