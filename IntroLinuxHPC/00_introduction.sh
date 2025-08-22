#!/bin/bash

# Text for onboarding script
text()
{
less 00_introduction.md
read -t5 -n1 -r -p "Press any key to see the list, sorted and with unique record"
less 01_resources.md
}

main() {
	text
}

# Main function
main
exit

