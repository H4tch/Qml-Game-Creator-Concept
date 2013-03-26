// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

/*
 *  This file describes the state of the interface when it loads. It may
 *  eventually be able to save the state on exit.
 */

QtObject {
		id: state
    property int windowWidth: 800
    property int windowHeight: 600
    property bool firstTime: 1

    property int iconBarSelection: 1
    property bool leftColumnCollapsed: true
    property int leftColumnWidth: 100 //if collapsed, it won't be 100
    property int leftColumnRows: 1

    //property int middleColumnWidth: 600 //Based on left and right widths

    property bool rightColumnCollapsed: true
    property int rightColumnWidth: 150
    property int rightColumnRows: 1
}
