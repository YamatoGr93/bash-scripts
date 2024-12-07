#!/bin/bash

# Define the output file path
OUTPUT_FILE=~/Desktop/system_report.txt

# Create or overwrite the output file
echo "System Analysis Report" > "$OUTPUT_FILE"
echo "=======================" >> "$OUTPUT_FILE"
echo "Generated on: $(date)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Section 1: System Information
echo "1. System Information" >> "$OUTPUT_FILE"
echo "----------------------" >> "$OUTPUT_FILE"
echo "- Hostname: $(hostname)" >> "$OUTPUT_FILE"
echo "- Kernel Version: $(uname -r)" >> "$OUTPUT_FILE"
echo "- Uptime: $(uptime -p)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Section 2: Installed Software
echo "2. Installed Software" >> "$OUTPUT_FILE"
echo "----------------------" >> "$OUTPUT_FILE"
echo "- APT Packages: $(apt list --installed 2>/dev/null | wc -l)" >> "$OUTPUT_FILE"
echo "- Snap Packages: $(snap list 2>/dev/null | wc -l)" >> "$OUTPUT_FILE"
echo "- Flatpak Packages: $(flatpak list 2>/dev/null | wc -l)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Section 3: Disk Usage
echo "3. Disk Usage" >> "$OUTPUT_FILE"
echo "-------------" >> "$OUTPUT_FILE"
echo "- Largest Files/Directories:" >> "$OUTPUT_FILE"
sudo du -ahx / | sort -rh | head -n 10 >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Section 4: Observations and Cleanup Suggestions
echo "4. Observations and Cleanup Suggestions" >> "$OUTPUT_FILE"
echo "----------------------------------------" >> "$OUTPUT_FILE"
echo "Example observations:" >> "$OUTPUT_FILE"
echo "- Some large files or ISOs are in ~/Downloads." >> "$OUTPUT_FILE"
echo "- Consider running 'sudo apt autoremove' to clean unused packages." >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Section 5: Summary
echo "5. Summary" >> "$OUTPUT_FILE"
echo "----------" >> "$OUTPUT_FILE"
echo "- Recommendations:" >> "$OUTPUT_FILE"
echo "  1. Remove unnecessary ISOs in ~/Downloads." >> "$OUTPUT_FILE"
echo "  2. Review ~/opt for unused applications." >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Final confirmation
echo "Report has been saved to $OUTPUT_FILE"
