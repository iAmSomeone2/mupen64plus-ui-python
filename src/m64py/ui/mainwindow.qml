import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    id: mainwindow
    width: 524
    height: 524
    minimumWidth: 320
    minimumHeight: 289
    visible: true
    title: qsTr("M64Py")

    menuBar: MenuBar {
        id: menuBar
        width: mainwindow.width
        // File Menu
        Menu {
            id: fileMenu
            title: qsTr("&File")
            Menu {
                title: qsTr("&Open ROM")
                Action {
                    text: qsTr("&Manually")
                    icon.name: "document-open"
                }
                Action {
                    text: qsTr("From &list")
                }
            }
            Menu {
                id: recentRomMenu
                title: qsTr("Open &recent")
                Action {
                    id: clearHistoryAct
                    text: qsTr("&Clear history")
                }
            }
            MenuSeparator {}
            Action {
                text: qsTr("Load state")
                //sequence: "F7" 
                enabled: false
                icon.name: "document-open"
            }
            Action {
                text: qsTr("Save state")
                //sequence: "F5"
                enabled: false
                icon.name: "document-save"
            }
            Menu {
                title: qsTr("Change State Slot")
                // TODO: Figure out how to add a set of radio button actions
            }
            MenuSeparator {}
            Action {
                text: qsTr("Load state from file")
                icon.name: "document-open"
                enabled: false
            }
            Action {
                text: qsTr("Save state to file")
                icon.name: "document-new"
                enabled: false
            }
            MenuSeparator {}
            Action {
                text: qsTr("&Save screenshot")
                icon.name: "camera-photo"
                enabled: false
            }
            MenuSeparator {}
            Action {
                text: qsTr("Show ROM info")
                icon.name: "document-properties"
                enabled: false
            }
            MenuSeparator {}
            Action {
                text: qsTr("E&xit")
                onTriggered: mainwindow.close()
                icon.name: "application-exit"
            }
        }
        // Emulation Menu
        Menu {
            id: emuMenu
            title: qsTr("&Emulation")
            Action {
                text: qsTr("&Pause")
                checkable: true
                checked: false
                icon.name: "media-playback-pause"
            }
            Action {
                text: qsTr("&Mute")
                checkable: true
                checked: false
                icon.name: "audio-volume-muted"
            }
            MenuSeparator {}
            Action {
                text: qsTr("&Stop")
                icon.name: "process-stop"
            }
            Action {
                text: qsTr("&Reset")
                icon.name: "object-rotate-right"
            }
            Action {
                text: qsTr("Sof&t reset")
                icon.name: "object-rotate-right"
            }
            MenuSeparator {}
            Action {
                text: qsTr("Limit FPS")
                checkable: true
                checked: true
            }
            MenuSeparator {}
            Action {
                text: qsTr("Speed up")
                icon.name: "go-up"
            }
            Action {
                text: qsTr("Slow down")
                icon.name: "go-down"
            }
            MenuSeparator {}
            Action {
                text: qsTr("Cheats...")
                icon.name: "preferences-other"
            }
        }
        // View Menu
        Menu {
            id: viewMenu
            title: qsTr("&View")
            Menu {
                title: qsTr("Window size")
                RadioButton {
                    text: "1X"
                }
                RadioButton {
                    text: "2X"
                }
                RadioButton {
                    text: "3X"
                }
            }
            MenuSeparator {}
            Action {
                text: qsTr("Fullscreen")
                //sequence: "Alt+Return"
                icon.name: "view-fullscreen"
            }
        }
        // Settings Menu
        Menu {
            id: settingsMenu
            title: qsTr("&Settings")
            Action {
                text: "Paths"
                icon.name: "document-properties"
            }
            Action {
                text: "Emulator"
                icon.name: "applications-games"
            }
            Action {
                text: "Graphics"
                icon.name: "applications-graphics"
            }
            Action {
                text: "Plugins"
                icon.name: "utilities-terminal"
            }
        }
        //Help Menu
        Menu {
            id: helpMenu
            title: qsTr("&Help")
            Action {
                text: qsTr("&About")
                icon.name: "help-about"
            }
            Action {
                text: qsTr("&License")
                icon.name: "help-contents"
            }
            Action {
                text: qsTr("&View logs")
                icon.name: "help-faq"
            }
        }
    }

    footer: Rectangle {
        id: statusBar
        width: mainwindow.width
        height: 24
        color: "#D4D4D4"
    }

    Rectangle {
        id: contentArea
        width: mainwindow.width
        height: mainwindow.height - (menuBar.height + footer.height)
        color: "#555555"
    }
}