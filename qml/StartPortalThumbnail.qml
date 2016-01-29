// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    width: 100
    height: 62

    Text {
        id: label
        text: parent.parent.text
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
}
