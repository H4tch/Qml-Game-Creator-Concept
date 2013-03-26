// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "core"



Rectangle {
	id: window
	width: 800
	height: 600
	color: "#303030"


	Rectangle {
		id: toolBar
		width: window.width
		height: 64
		color: "#606060"
	}


	Rectangle {
		id: iconBarHolderVertical
		width: 76
		color: "#202020"
//	height: window.height - toolBar.height
		anchors.top: toolBar.bottom
		anchors.left: parent.left
		anchors.bottom: window.bottom
		IconBar { id: iconBar; }
		//anchors.onRightChanged: function() {}
//		anchors.right: iconBar.right
	}

	Rectangle {
		id: mainContentHolder
		color: "#000000"
		anchors.left: iconBarHolderVertical.right
		anchors.leftMargin: 1
		anchors.top: toolBar.bottom
		anchors.right: window.right
		anchors.bottom: window.botto
		Viewer {}
	}
}






/*
Rectangle {
	id: window
	width: 800
	height: 600
	color: "#303030"


	Rectangle {
		id: toolBar
		width: window.width
		height: 64
		color: "#606060"
	}


	Rectangle {
		id: iconBarHolderVertical
		width: 76
		color: "#202020"
//	height: window.height - toolBar.height
		anchors.top: toolBar.bottom
		anchors.left: parent.left
		anchors.bottom: window.bottom
		IconBar { id: iconBar; }
		//anchors.onRightChanged: function() {}
//		anchors.right: iconBar.right
	}

	Rectangle {
		id: mainContentHolder
		color: "#000000"
		anchors.left: iconBarHolderVertical.right
		anchors.leftMargin: 1
		anchors.top: toolBar.bottom
		anchors.right: window.right
		anchors.bottom: window.botto
		Viewer {}
	}
}
*/
