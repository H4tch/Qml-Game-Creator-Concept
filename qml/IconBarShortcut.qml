import QtQuick 1.1
import "style"

Row {
	width: parent.width
    height: parent.width
    anchors.horizontalCenter: parent.horizontalCenter
    property string icon: "../Game_Creator48.png";
    property string label: ""
    property int fontsize: 9
    property bool selected: false
    property bool highlighted: false

    Rectangle {
        id: icon
		signal clicked
        //property alias text: text.text

		width: parent.width
        height: parent.height
        //border.color: "#333333"
        border.width: 0
        color: style.iconBarColor
		smooth: true
        //radius: 5

        property color textColor: style.iconBarFontMain

		Text {
            id: text
            text: parent.parent.label
			font.bold: true
            font.pointSize: parent.parent.fontsize
            color: parent.textColor
            //styleColor: "#eeeeee"
            //style: Text.Raised
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
        /*
        Rectangle {
            id: separator;
            height: 1; width: parent.width;
            color: style.iconBarColor;
            anchors.bottom: parent.bottom;
        }
        */
	}
}
