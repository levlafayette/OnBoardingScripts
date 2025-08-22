#!/bin/bash

# List of files
files=("10_LinuxCLI.md" "12_FileSystem.md" "13_ExploreEnvironment.md" "14_CommandOptions.md" "15_OnlineManual.md" "16_PipesRedirects.md" "17_FilesEditing.md" "18_CopyLocally.md" "19_CopySync.md" "20_CreatingMoving.md" "21_FileDifferences.md" "22_SearchesWildcards.md" "23_Deletions.md" "24_Matters.md" )

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
