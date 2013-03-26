import QtQuick 1.1
import "../style"
 Rectangle {
	 ButtonStyle { id: style; }
	 id: button
	 width: style.buttonWidth; height: style.buttonHeight
	 border.width: 1
	 border.color: style.buttonBorderColor
	 //radius: 4
	 radius: ((width>=200)? height/2 : height/4 )
	 smooth: true

	 signal clicked;
	//signal pressed;
	 signal hovered;

	 property alias text: text.text
	 property bool toggleable: false;
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
/*		if (toggleable) {
			if ( !toggled) { toggled = true; state = "toggled"; }
			else { toggled = false; state = "hover"; }
		}
		 else state = "hover" //maybe do a check to see if hover is enabled first
*/
	 }

//	 function onRelease() {
//		 stat
//	 }

	MouseArea {
		id: mouseArea
		hoverEnabled: true;
		anchors.fill: parent
		onClicked: {
		/*	if (button.toggleable) {
				if (button.toggled) {
					button.toggled = false
					button.state = "hover"
				}
				else { button.toggled = true; button.state = "toggled"; }
			}
		*/
			if (button.state=="pressed") button.state = "hover";
			else { button.state = "pressed"; button.toggled = true; }
			button.onClicked();
		}
		onHoveredChanged: {
			if (button.state == "hover") button.state = "default"
			else if (button.state == "default") {
				button.state = "hover";
			}

		}
	 }
	Rectangle {
		id: highlight
		anchors.fill: button; radius: 10; color: "white"; opacity: 0
	}

	 states: [
		State {
			name: "hover"
			PropertyChanges { target: button; gradient: style.buttonGradientHover; }
			PropertyChanges { target: text; color: style.buttonTextColorHover; }
		},
		 State {
			 name: "pressed"
			// when: mouseArea.pressed && mouseArea.hoverEnabled;
			 PropertyChanges { target: button; gradient: style.buttonGradientPressed; }
			 PropertyChanges { target: text; color: style.buttonTextColorPressed; }
		 },
		 State {
			 name: "toggled"
			 PropertyChanges { target: button; text: "Toggled"; }
			 PropertyChanges { target: button; gradient: style.buttonGradientToggled; }
			 PropertyChanges { target: text; color: style.buttonTextColorToggled; }
		  }

	 ]

 }
