#!/bin/bash

# Define the URL for Ghidra
GHIDRA_URL="https://ghidra-sre.org/ghidra_11.2.1_PUBLIC_2022.zip"

# Define the destination directory
DEST_DIR="$HOME/Documents"

# Download Ghidra
curl -L -o "$DEST_DIR/ghidra.zip" "$GHIDRA_URL"

# Unzip the downloaded file
unzip "$DEST_DIR/ghidra.zip" -d "$DEST_DIR"

# Remove the zip file
rm "$DEST_DIR/ghidra.zip"

# Open Ghidra using the created AppleScript application
open "$DEST_DIR/RunGhidra.app"
