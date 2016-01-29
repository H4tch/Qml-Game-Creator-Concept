import QtQuick 1.1

/**
 * Created by Dan Hatch <danhatch333@gmail.com> 2012-2013
**/


/*
 *  To create your own style, back this file up and modify the following
 *  settings.
 */

QtObject {
	id: style
/* Generic Theming */
	property color windowBackgroundColor: "#303030"

	//property int titleAlignment: Text.AlignHCenter
	//property int titleAnchor: parent.centerIn
	property color mainTextColor: "#171717"
	property color secondaryTextColor: "#d3d3d3"
    property color panelColor: "#333333"

/* ToolBar */
	property Gradient toolBarBackground:
        Gradient {
        GradientStop { position: 0; color: "#444444"; }
        GradientStop { position: 1; color: "#303030"; }
    }
// END ToolBar


/* TitleBar */
	property int titleBarFontSize: 12
    property int titleBarHeight: 24
    property color titleBarColor: "#171717"
    property Gradient titleBarGradient:
        Gradient { //This gradient is light blue and has a glossy look.
        GradientStop { position: 0;		color: "#97caee"; }
        GradientStop { position: 0.470; color: "#86c5db"; }
        GradientStop { position: 0.475; color: "#82bddb"; }
        GradientStop { position: 1;		color: "#7bb4d9"; }
    }
// END TitleBar


/* IconBar */
    property int iconBarWidth: 64
    property color iconBarColor: "#dddddd"
    property color iconBarFontMain: "#444444"
// END IconBar


/* StartPortal */
    property color startPortalColor: "black"
}
// END StartPortal
