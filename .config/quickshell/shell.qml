import Quickshell
import Quickshell.Io
import QtQuick

PanelWindow {
	anchors {
		top: true
		left: true
		right: true
	}

	implicitHeight: 30

	Text {
		id: clock
		anchors.centerIn: parent

		Process {
			id: dateProc
			command: ["date", "+%H:%M | %d %b %G %a"]
			running: true
			stdout: StdioCollector {
				onStreamFinished: clock.text = this.text
			}
		}

		Timer {
			interval: 60000
			running: true
			repeat: true
			onTriggered: dateProc.running = true
		}
	}

	// Text {
	// 	id: battery
	// 	anchors.centerIn: parent
	// 	Process {
	// 		id: batProc
	// 		command: ["cat", "/sys/class/power_supply/BAT0/capacity"]
	// 		running: true
	// 		stdout: StdioCollector {
	// 			onStreamFinished: battery.text = this.text
	// 		}
	// 	}
	// }
}
