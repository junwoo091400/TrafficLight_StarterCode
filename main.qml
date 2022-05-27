import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQml 2.15


ApplicationWindow {
    id: _root
    visibility: Window.Maximized
    title: qsTr("Semaphore")

    ScrollView {
        anchors.fill: parent
        contentWidth: _flow.width
        clip: true

        Flow {
            id: _flow
            spacing: _root.width/37
            padding: spacing
            width: _root.width

            Semaphore {
                id: _semaphore1
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

                /* demonstrate some of the features of your Semaphore:
                    1 - scalability
                    2 - the ability to be driven from the code
                    3 - the ability to be driven based on the user's input
                */

                height: 150
            }
            Semaphore {
                id: _semaphore2
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

                /* demonstrate some of the features of your Semaphore:
                    1 - scalability
                    2 - the ability to be driven from the code
                    3 - the ability to be driven based on the user's input
                */
            }
            Semaphore {
                id: _semaphore3
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

                /* demonstrate some of the features of your Semaphore:
                    1 - scalability
                    2 - the ability to be driven from the code
                    3 - the ability to be driven based on the user's input
                */
            }
        }
    }
}
