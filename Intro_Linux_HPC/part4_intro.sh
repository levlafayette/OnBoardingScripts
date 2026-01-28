#!/bin/bash

# List of files
files=("37_JobDefaults.md" "38_SingleCoreJobs.md" "39_MultiCoreJobs.md" "40_MultiNodeJobs.md" "41_JobScriptGenerator.md" "42_JobArrays.md" "43_JobDependencies.md" "44_InteractiveJobs.md" "45_WebBasedInteractive.md" "46_MultipleJobSteps.md" "47_Backfilling.md" "48_MemoryAllocation.md" "49_DataAndStaging.md")

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
