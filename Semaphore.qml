import QtQuick 2.15
import QtQuick.Layouts 1.15


Rectangle {
    id: _root

    property int state: 0

    function advanceState() {
        state++
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

    MouseArea {
        anchors.fill: parent

        onClicked: advanceState()
        z: 1000
    }

    ColumnLayout {

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        height: parent.height * 0.9

        Rectangle {
            height: parent.height / 4
            width: height
            radius: height / 2

            color: state == 0 ? "red" : "darkred"

        }

        Rectangle {
            height: parent.height / 4
            width: height
            radius: height / 2

            color: state == 1 ? "gold" : "goldenrod"

        }

        Rectangle {
            height: parent.height / 4
            width: height
            radius: height / 2

            color: state == 2 ? "green" : "darkgreen"

        }

    }


// PRIVATE: the user should not set these properties. They are for component self-organization

    width: height / 3
    height: 300
    color: "black"
}
