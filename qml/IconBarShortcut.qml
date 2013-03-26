import QtQuick 1.1

Row {
	width: parent.width
    height: parent.width
	anchors.horizontalCenter: parent.horizontalCenter

    property string icon: ""
    property string text: ""
    property int fontsize: 9
    property bool selected: false
    property bool highlighted: false

	Rectangle {
		id: icon
		signal clicked

        //property alias text: text.text

		width: parent.width
		height: parent.height
		border.color: "#333333"
		border.width: 1
		color: "#c4c4c4"
		smooth: true
		//radius: 5
		//color: "#c4c4c4"

		Text {
			id: text
            text: parent.parent.text
			font.bold: true
            font.pointSize: parent.parent.fontsize
			color: "#333333"
			styleColor: "#eeeeee"
			style: Text.Raised
			wrapMode: Text.WordWrap
			anchors.bottom: parent.bottom
			anchors.bottomMargin: 1
			anchors.horizontalCenter: parent.horizontalCenter
		}

		MouseArea {
			anchors.fill: parent
			hoverEnabled: true
			onHoveredChanged: {}
			onClicked: {}
		}

		Image {
			id: image
			width: 48
			height: 48
			anchors.top: parent.top
            anchors.topMargin: 2
			anchors.horizontalCenter: parent.horizontalCenter
            source: parent.parent.icon
		}
	}
}
