import QtQuick 1.1
import "../style"

 Rectangle {
	 ButtonStyle { id: style; }
	 id: button
	 width: style.buttonWidth; height: style.buttonHeight
	 border.width: 1
	 border.color: style.buttonBorderColor
	 radius: ((width>=200)? height/2 : height/4 )
	 smooth: true

	 signal clicked;
	 signal hovered;

     property alias label: text.text
     property bool toggleable: true;
	 property bool toggled: false;

	 state: "default"
	 gradient: style.buttonGradient

	Text {
         id: text
		 anchors.verticalCenter: parent.verticalCenter
		 anchors.verticalCenterOffset: 1
		 anchors.left: parent.left
		 anchors.leftMargin: 8
		 font.pointSize: 9
		 color: style.buttonTextColor
	 }

	 function onClicked() {
     }

     function onReleased() {
     }

	MouseArea {
		id: mouseArea
		hoverEnabled: true;
		anchors.fill: parent
        onPressedChanged: {
            // When the button is toggleable, it doesn't set the toggle, instead
            // it uses the button state in the next press change to determine if
            // the toggle state should be updated to reflect the button state.
            if ( button.state == "pressed" ) {
                if ( button.toggleable ) {
                    if ( button.toggled ) {
                        button.state = "hover"
                    } else {
                        button.toggled = true;
                        onClicked();
                    }
                } else {
                    button.state = "hover";
                    onRelease();
                }
            } else {
                if ( button.toggleable ) {
                    if (button.toggled) {
                        button.toggled = false;
                        onReleased();
                    } else button.state = "pressed"
                } else {
                    button.state = "pressed";
                    onClicked();
                }
            }
        }
		onHoveredChanged: {
            if (button.state == "default") {
                button.state = "hover"
            } else if (button.state == "hover") {
                button.state = "default";
			}
		}
	 }

	 states: [
		State {
			name: "hover"
			PropertyChanges { target: button; gradient: style.buttonGradientHover; }
			PropertyChanges { target: text; color: style.buttonTextColorHover; }
		},
		 State {
			 name: "pressed"
			 PropertyChanges { target: button; gradient: style.buttonGradientPressed; }
			 PropertyChanges { target: text; color: style.buttonTextColorPressed; }
         }/*,
         State {
			 name: "toggled"
             PropertyChanges { target: button; label: "Toggled"; }
             PropertyChanges { target: button; gradient: style.buttonGradientPressed; }
             PropertyChanges { target: text; color: style.buttonTextColorPressed; }
          }*/

	 ]

 }
