import QtQuick 1.1

Rectangle {
	id: iconBar
    width: parent.width
	height: parent.height
	anchors.fill: parent
    color: style.iconBarColor

	TitleBar {
		id: iconBarTitleBar
		text: ""
        icon: "../hide.png"
	}

	Column {
		id: iconBarColumnTop
		width: parent.width
		anchors.top: iconBarTitleBar.bottom
        IconBarShortcut { label: "Overview"; selected: true; }
        IconBarShortcut { label: "Edit" }
        IconBarShortcut { label: "Design" }
        IconBarShortcut { label: "Team"; }
        IconBarShortcut { label: "Debug" }
    }

    Column {
		id: iconBarColumnBottom

		width: parent.width
		anchors.bottom: parent.bottom
        //anchors.bottomMargin: 10

        IconBarShortcut { label: "Launch"; }
        IconBarShortcut { label: "Build"; }
        IconBarShortcut { label: "Deploy"; }
    }
//		states: State {
//						 name: "horizontal"; when: mouseArea.pressed == true
//						 PropertyChanges { target: shade; opacity: .4 }
//				 }
}

