// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
   anchors.fill: parent
   color: parent.color
   Rectangle {
       id: closeButton
        anchors.right: parent.right
        MouseArea {
            onClicked: function(){}
        }
   }
   //titlebar
   FocusScope {} // - titlebar.height
   Rectangle {
       id: splitButton
        anchors.right: parent.right
        MouseArea {
            onClicked: function(){}
        }
   }
}
