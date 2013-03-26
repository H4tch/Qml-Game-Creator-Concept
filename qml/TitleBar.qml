import QtQuick 1.1

Rectangle {
	//Style{ id: style }
    id: dockTitleBar
    width: parent.width
	height: style.titleBarHeight

	property alias text: title.text

	Text{
		id: title;
		text: qsTr("Unnamed");
		//font.pointSize: style.titleBarFontSize
		anchors.centerIn: parent;
	}

	gradient: style.titleBarGradient
	//anchors.top: parent.top
	//color: "#a7cfed"
}
