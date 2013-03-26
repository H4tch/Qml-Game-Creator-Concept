// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1


Rectangle {
    id: startPortal
    anchors.fill: parent
	color: style.startPortalColor

    TitleBar {
		id: titleBar
		text: qsTr("Welcome, please choose an action.");
    }

	Grid {
		 id: grid
		 anchors.fill: parent
		 //StartPortalButton {}

    }
}
