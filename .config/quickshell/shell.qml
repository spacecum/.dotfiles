import Quickshell // for PanelWindow
import Quickshell.Io // for Process
import QtQuick // for Text

PanelWindow {
	anchors {
		top: true
		left: true
		right: true
	}

	implicitHeight: 32

	Text {
		id: clock
		anchors.centerIn: parent

		Process {
			id: dateProc
			command: ["date", "+%H:%k | %d %B"]
			running: true
			stdout: StdioCollector {
				// Listen for the streamFinished signal, which is sent
				// when the process closes stdout or exits.
				onStreamFinished: clock.text = this.text // `this` can be omitted
			}
		}
		Timer {
			interval: 60000
			running: true
			repeat: true
			onTriggered: dateProc.running = true
		}
	}
}
