import QtQuick 1.1


Rectangle {
    TitleBar{ id: titleBar; text: "Class List" }
    id: listview1
    width: parent.width
    height: parent.height
    color: style.panelColor

    ListView {
        id: classList
        width: parent.width
        height: parent.height
        anchors.top: titleBar.bottom

        contentWidth: parent.width - 10
        contentHeight: 20

        delegate: Item {
            height: 20
            Row {
                Rectangle { height: 20; width: classList.width; color: lineColor }
                id: row1
                spacing: 10
                Text {
                    x: 0
                    text: name
                    font.bold: true
                    color: "#cfcfcf"
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                    anchors.bottom: parent.bottom
                    clip: true
                }
            }
        }
        model: ListModel {
            ListElement {
                name: "name: \"Sprite\""
                lineColor: "#202020"
            }

            ListElement {
                name: "lineColor: \"#333333\""
                lineColor: "#333333"
            }

            ListElement {
                name: "lineColor: \"#202020\""
                lineColor: "#202020"
            }

            ListElement {
                name: "other.."
                lineColor: "#333333"
            }
        }
    }

}
