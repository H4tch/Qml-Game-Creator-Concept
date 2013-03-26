// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
	id: iconBar
    width: parent.width
	height: parent.height
	anchors.fill: parent
	color: parent.color

	TitleBar {
		id: iconBarTitleBar
		text: ""
	}

	Column {
		id: iconBarColumnTop
		width: parent.width
		anchors.top: iconBarTitleBar.bottom
        IconBarShortcut { text: "Overview"; icon: "../Game_Creator48.png"; selected: true; }
        IconBarShortcut { text: "Edit" }
        IconBarShortcut { text: "Design" }
        IconBarShortcut { text: "Team"; }
        IconBarShortcut { text: "Debug" }
    }

    Column {
		id: iconBarColumnBottom

		width: parent.width
		anchors.bottom: parent.bottom
        //anchors.bottomMargin: 10

        IconBarShortcut { text: "Launch"; }
        IconBarShortcut { text: "Build"; }
        IconBarShortcut { text: "Deploy"; }
    }
//		states: State {
//						 name: "horizontal"; when: mouseArea.pressed == true
//						 PropertyChanges { target: shade; opacity: .4 }
//				 }
}

