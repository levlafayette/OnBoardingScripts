#!/bin/bash

# List of files
files=("25_DynamicEnvironment.md" "26_SoftwareBuilds.md" "27_ModuleCommands.md" "28_2022Modules.md" "29_PortableBatchSystem.md" "30_SlurmWorkloadManager.md" "31_JobSubmissionPrinciples.md" "32_FairShare.md" "33_JobsAndNodes.md" "34_PartitionAndQueues.md" "35_JobStatus.md" "36_JobMonitoring.md" )

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
