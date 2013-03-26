// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1


ListView {
    TitleBar{ id: titleBar; text: "Class List" }
    id: listview1
    contentWidth: parent.width
    contentHeight: 20

    Item {
        id: item1
        anchors.top: titleBar.bottom
        anchors.topMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.right: parent.right

        Text {
            id: test
            text: "This is a test"
            font.pixelSize: 12
        }
    }


}
