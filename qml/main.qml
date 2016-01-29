import QtQuick 1.1
import "core"
import "style"

Rectangle {
    property variant style: Style { id: style }
	State { id: state }
	id: window
	width: 800
	height: 600
	color: style.windowBackgroundColor


Grid {
	id: windowGrid
	rows: 2
	columns: 1
	anchors.fill: parent

    Row {
		id: topRow
         width: parent.width
		 clip: true
		Rectangle {
			id: toolBarHolder
			width: window.width
			height: 64
			gradient: style.toolBarBackground
            Button{ x:60; y:30; label:"Click Me!"; }
		}
	} // topRow

	Row {
		id: mainRow
		width: parent.width
        height: parent.height - topRow.height

        Column {
			id: iconBarColumn
            width: style.iconBarWidth
            height: parent.height
            IconBar { id: iconBar; clip: true }
        } // iconBarColumn

        Grid {
            id: editorView
            width: parent.width - iconBar.width
            height: parent.height

		Column {
			id: leftColumn
            width: 0
			height: parent.height

			Rectangle {
				id: leftColumnHolder
				width: parent.width
			}
		}

        Column {
            id: middleColum
            height: parent.height
            //width: parent.width - leftColumn.width - rightColumn.width
            anchors.left: leftColumn.right
            anchors.leftMargin: 1
            anchors.right: rightColumn.left
            anchors.rightMargin: 1

            Rectangle {
                id: middleColumnHolder
                width: parent.width
                height: parent.height
                x: 0
                StartPortal {}
            }
        } // middleColumn


        Column {
            id: rightColumn
            width: 150
            anchors.right: editorView.right
            height: parent.height

            Rectangle {
                id: rightColumnHolder
                width: parent.width
                height: parent.height
                color: window.color

                ClassList { x: 0; y: 0; anchors.rightMargin: 0; anchors.bottomMargin: 0; anchors.leftMargin: 0; anchors.topMargin: 0; anchors.fill: parent}
            }
        }
        } // editorView


    } // mainRow
} // windowGrid
} // window
