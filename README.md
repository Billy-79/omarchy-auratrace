# AuraTrace 🌌

> **Minimalist Context Telemetry Bridge for Omarchy 4 Agentic Workflows**

AuraTrace is an understated, zero-bloat status bar widget and context-sourcing daemon designed for **Omarchy 4**. It continuously captures your active workspace telemetry—window titles, active Git branches, and recent shell history—into an atomic Markdown ledger.

With a single click on your status bar, AuraTrace bridges your active workspace state directly into your local AI coding agent.

---

## ✨ Features

- **Zero-Bloat Daemon (`auratrace-d`):** Lightweight background loop sampling local workflow state every 5 seconds.
- **Quickshell Integration (`AuraTraceWidget.qml`):** Minimalist status bar widget providing real-time visual feedback.
- **Instant Agent Handshake (`auratrace-handshake`):** Single-click handoff feeding workspace context into your default system agent (`claude` / `$OMARCHY_AGENT`).
- **Omakase Native:** Fully compliant with strict Omarchy Unix permissions and file structure conventions.

---

## 🚀 Installation

Clone the repository and run the automated deployment script:

    git clone https://github.com/Billy-79/omarchy-auratrace.git
    cd omarchy-auratrace
    ./install.sh

---

## 🛠 Project Structure

    omarchy-auratrace/
    ├── bin/
    │   ├── auratrace-d          # Background context telemetry daemon
    │   └── auratrace-handshake  # Quickshell agent handoff trigger
    ├── quickshell/
    │   └── AuraTraceWidget.qml  # Status bar UI element
    ├── install.sh               # Automated local deployment installer
    ├── manifest.json            # Omarchy 4 plugin manifest
    └── README.md                # Project documentation

---

## 📄 License

Distributed under the MIT License. Built with strict Omakase design principles for the Omarchy 4 ecosystem.
