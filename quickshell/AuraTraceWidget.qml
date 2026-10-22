import QtQuick
import Quickshell

/*
===============================================================================
Component: AuraTraceWidget.qml
Target Ecosystem: Omarchy 4 Quickshell Bar Integration
Description:
    Renders an understated, elegant status bar element showing context health.
    Clicking the widget fires the handshake script to summon the default system agent.
===============================================================================
*/
Rectangle {
    id: auraRoot
    width: 28
    height: 20
    color: "transparent"

    // Core status indicator dot following Omakase minimalist UI guidelines
    Rectangle {
        id: pulseDot
        width: 6
        height: 6
        radius: 3
        anchors.centerIn: parent
        color: "#10B981" // Vibrant emerald green indicating active tracking state

        // Smooth state transition animations
        Behavior on color {
            ColorAnimation { duration: 250 }
        }
        Behavior on scale {
            NumberAnimation { duration: 150; easing.type: Easing.OutQuad }
        }
    }

    // Mouse interaction handler for status bar click-to-action
    MouseArea {
        id: mouseHandler
        anchors.fill: parent
        hoverEnabled: true

        onEntered: {
            pulseDot.scale = 1.3
            pulseDot.color = "#34D399" // Lighter highlight on hover
        }

        onExited: {
            pulseDot.scale = 1.0
            pulseDot.color = "#10B981"
        }

        onClicked: {
            // Trigger the native handoff script to bridge context directly into the agent
            Quickshell.execDetached("auratrace-handshake")
        }
    }
}
