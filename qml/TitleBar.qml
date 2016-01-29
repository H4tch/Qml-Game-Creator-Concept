import QtQuick 1.1

Rectangle {
	//Style{ id: style }
    id: dockTitleBar
    width: parent.width
    height: style.titleBarHeight

	property alias text: title.text
    property alias icon: icon.source

    Image {
        id: icon
        source: ""
        anchors.right: title.left
        anchors.verticalCenter: parent.verticalCenter
    }
    property Item content: Item {}

    Text {
		id: title;
        text: "";
		//font.pointSize: style.titleBarFontSize
		anchors.centerIn: parent;
	}

	gradient: style.titleBarGradient
	//anchors.top: parent.top
	//color: "#a7cfed"
}
