import QtQuick 2.15
import QtQuick.Layouts 1.15


Rectangle {
    id: _root

    // State that defines which light is active in the Traffic Light object
    property int state: 0

    // When called, advances the state to the next (red -> yellow -> green)
    function advanceState() {
        state++
        console.log(state)
        if(state > 2)
            state = 0
    }

    // PUBLIC: the user is supposed to set these properties as they like
    /* The user needs to be able to drive the behavior of the semaphore from the code so you'll
       need to define some properties. When they are set from the outside the semaphore should
       react accordingly
    */

    /* The semaphore should also be able to notify the application about particular user's
       interactions. For instance when the user clicks in the lights or in the background. The
       corresponding behavior on user input should not be tied to the semaphore itself. When the
       user clicked somewhere in the semaphore just emit a signal and then everyone interested in
       the event will be able to react accordingly.
    */

    // Area where it's clickable, which is the whole rectangle background area
    MouseArea {
        anchors.fill: parent

        onClicked: {
            advanceState() // Advance the state upon click from the user
        }
    }

    ColumnLayout {
        // Anchor the Layout so that the Traffic Signal lights are centered horizontally
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        // Set the height to 90% in order to make sure the light elements aren't touching
        // the Black background box (in vertical direction)
        height: parent.height * 0.9

        // Red signal light element
        // Height is 25% of the parent's size, to make it automatically scale
        // Radius is 50% of the parent's height, so that circle fills in the rectangle element perfectly inside
        Rectangle {
            height: parent.height / 4
            width: height
            radius: height / 2

            // When the state is 0 (Red light on), set it from Dark Red -> Red
            color: _root.state == 0 ? "red" : "darkred"

        }

        Rectangle {
            height: parent.height / 4
            width: height
            radius: height / 2

            color: _root.state == 1 ? "gold" : "goldenrod"

        }

        Rectangle {
            height: parent.height / 4
            width: height
            radius: height / 2

            color: _root.state == 2 ? "green" : "darkgreen"

        }

    }


// PRIVATE: the user should not set these properties. They are for component self-organization

    width: height / 3
    height: 300
    color: "black"
}
