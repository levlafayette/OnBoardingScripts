#!/bin/bash

# List of files
files=("00_introduction.md" "01_resources.md" "02_need.md" "03_supercomputers.md" "04_research.md" "05_HPCArchitecture.md" "06_ParallelJobTypes.md" "07_SpartansStory.md" "08_SpartansArchitectureNow.md" "09_AccountsProjects.md" "10_LinuxCLI.md" )

for f in "${files[@]}"; do
    if [[ -f "$f" ]]; then
        less "$f"
        echo "Press any key to continue..."
        # Wait for a single keypress
        read -n 1 -s
    else
        echo "File not found: $f"
    fi
done

echo "Done!"
