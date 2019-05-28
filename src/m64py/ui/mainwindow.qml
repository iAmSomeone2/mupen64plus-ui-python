import QtQuick 2.12
//import QtQuick.Window 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    id: mainwindow
    width: 320
    height: 289
    visible: true
    title: qsTr("M64Py")

    menuBar: MenuBar {
        width: parent.width
        Menu {
            title: qsTr("&File")
            Menu {
                title: qsTr("&Open ROM")
            }
            Menu {
                title: qsTr("Open &recent")
            }
            MenuSeparator {}
            Action {
                text: qsTr("Load state")
                icon.name: "document-open"
            }
            Action {
                text: qsTr("Save state")
                icon.name: "document-save"
            }
            Menu {
                title: qsTr("Change State Slot")
            }
            MenuSeparator {}
            Action {
                text: qsTr("Load state from file")
            }
            Action {
                text: qsTr("Save state to file")
                icon.name: "document-saveas"
            }
            MenuSeparator {}
            Action {
                text: qsTr("&Save screenshot")
            }
            MenuSeparator {}
            Action {
                text: qsTr("Show ROM info")
            }
            MenuSeparator {}
            Action {
                text: qsTr("E&xit")
                onTriggered: mainwindow.close()
                icon.name: "application-exit"
            }
        }
    }
}