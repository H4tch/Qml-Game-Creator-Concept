// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
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
		 width: windowGrid.width
		 clip: true
		Rectangle {
			id: toolBarHolder
			width: window.width
			height: 64
			gradient: style.toolBarBackground
			Button{ x:60; y:30; text:"Click Me!"; }
		}
	} // topRow

	Row {
		id: mainRow
		width: parent.width
		height: parent.height - topRow.height

		Column {
			id: iconBarColumn
			//width: iconBarHolder
            width: 64
			height: parent.height
			Rectangle {
				id: iconBarHolderVertical
				width: parent.width
				height: parent.height
				color: "#202020"
                IconBar { id: iconBar; }
                //anchors.right: iconBar.right
			}
		} // iconBar

        /// There should really be a Grid here, which holds different Editor Views
        // based on the iconBar's selection.
		Column {
			id: leftColumn
            width: -1
			height: parent.height

			Rectangle {
				id: leftColumnHolder
				width: parent.width
			}
		}

        Column {
            id: middleColumn
            height: parent.height
            //width: parent.width - leftColumn.width - rightColumn.width
            anchors.left: leftColumn.right
            anchors.right: rightColumn.left

            Rectangle {
                id: middleColumnHolder
                width: parent.width
                height: parent.height
                x: 2
                StartPortal {}
            }
        } // middleColumn


        Column {
            id: rightColumn
            width: 150
            anchors.right: parent.right
            height: parent.height

            Rectangle {
                id: rightColumnHolder
                width: parent.width
                height: parent.height
                color: window.color

                ClassList { x: 0; y: 0; anchors.rightMargin: 0; anchors.bottomMargin: 0; anchors.leftMargin: 0; anchors.topMargin: 0; anchors.fill: parent}
            }
        }


    } // mainRow
} // windowGrid
} // window
