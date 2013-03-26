// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

/*
 *  This style is inspired by Blender.
 *
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

/* Button */



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
// END IconBar

/* StartPortal */
    property color startPortalColor: "black"
}
// END StartPortal
