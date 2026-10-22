#!/usr/bin/env bash
# ==============================================================================
# Script: install.sh
# Purpose: Deploys AuraTrace binaries and QML widgets to system runtime paths
# ==============================================================================

set -euo pipefail

echo "🚀 Installing AuraTrace plugin..."

PLUGINS_DIR="$HOME/.local/share/omarchy/plugins/auratrace"
BIN_DIR="$HOME/.local/bin"
CACHE_DIR="$HOME/.cache/omarchy"

# Ensure target directories exist
mkdir -p "$PLUGINS_DIR"
mkdir -p "$BIN_DIR"
mkdir -p "$CACHE_DIR"

# Copy executable binaries and set permissions
cp bin/auratrace-d "$BIN_DIR/auratrace-d"
cp bin/auratrace-handshake "$BIN_DIR/auratrace-handshake"
chmod +x "$BIN_DIR/auratrace-d" "$BIN_DIR/auratrace-handshake"

# Copy QML UI widget & manifest
cp quickshell/AuraTraceWidget.qml "$PLUGINS_DIR/"
cp manifest.json "$PLUGINS_DIR/"

echo "✅ Installation complete!"
echo "Binaries installed to: $BIN_DIR"
echo "Plugin registered at:  $PLUGINS_DIR"
