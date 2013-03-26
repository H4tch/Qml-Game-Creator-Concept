// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

QtObject {
    id: style

/* button */
    property int buttonWidth: 128
    property int buttonHeight: 22
	property color buttonBorderColor: "#171717"
    property color buttonTextColor: "#171717"
    property color buttonTextColorHover: "#171717"
	property color buttonTextColorPressed: "#d3d3d3"
    property Gradient buttonGradient: Gradient {
		GradientStop {  id: stop1; position: 0.0; color: "#a0a0a0" }
		GradientStop {  id: stop2; position: 1.0; color: "#707070" }
    }
    property Gradient buttonGradientHover: Gradient {
		GradientStop {  position: 0.0; color: "#b0b0b0" }
		GradientStop {  position: 1.0; color: "#808080" }
    }
    property Gradient buttonGradientPressed: Gradient {
	   // GradientStop {  position: 0.0; color: "#282828" }
	   // GradientStop {  position: 1.0; color: "#484848" }
		GradientStop {  position: 0.0; color: "#404040" }
		GradientStop {  position: 1.0; color: "#707070" }
    }

/* Toggle Button */
	property color toggleButtonTextColorPressed: "#d3d3d3"
	property Gradient toggleButtonGradient: Gradient {
		GradientStop {  position: 0.0; color: "#484848" }
		GradientStop {  position: 1.0; color: "#282828" }
	}
	property Gradient toggleButtonGradientHover: Gradient {
		GradientStop {  position: 0.0; color: "#585858" }
		GradientStop {  position: 1.0; color: "#383838" }
	}
	property Gradient toggleButtonGradientPressed: Gradient {
		GradientStop {  position: 0.0; color: "#095baf" }
		GradientStop {  position: 1.0; color: "#0d7ef3" }
	}
}
