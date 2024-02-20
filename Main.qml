import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 640
    height: 960
    title: qsTr("Plane Seat Control Panel")
    Material.theme: Material.Dark
    Material.accent: Material.Blue

    ScrollView {
        anchors.centerIn: parent
        Frame {
            anchors.centerIn: parent
            background: Rectangle { color: "transparent" }

            ColumnLayout {
                anchors.centerIn: parent
                spacing: 25

                Label {
                    text: qsTr("PLANE SEAT CONTROL PANEL")
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 17
                    color: "white"
                }

                ColumnLayout {
                    spacing: 5

                    Label {
                        text: qsTr("BACKREST RECLINATION LEVEL")
                        horizontalAlignment: Text.AlignHCenter
                        font.pointSize: 14
                        color: "white"
                    }

                    RowLayout {
                        spacing: 20

                        Button {
                            text: "-"
                            font.pointSize: 30
                            width: 60
                            height: 60
                            autoRepeat: true
                            autoRepeatDelay: 600
                            background: Rectangle {
                                color: Material.accent
                                radius: height / 2
                            }
                            onClicked: progressBarBack.value = Math.max(progressBarBack.from, progressBarBack.value - 10)
                        }

                        ProgressBar {
                            id: progressBarBack
                            from: 90
                            to: 180
                            value: 90
                            Layout.fillWidth: true
                        }

                        Button {
                            text: "+"
                            font.pointSize: 30
                            width: 60
                            height: 60
                            autoRepeat: true
                            autoRepeatDelay: 600
                            background: Rectangle {
                                color: Material.accent
                                radius: height / 2
                            }
                            onClicked: progressBarBack.value = Math.min(progressBarBack.to, progressBarBack.value + 10)
                        }
                    }
                }

                ColumnLayout {
                    spacing: 5

                    Label {
                        text: qsTr("FOOTREST RECLINATION LEVEL")
                        horizontalAlignment: Text.AlignHCenter
                        font.pointSize: 14
                        color: "white"
                    }

                    RowLayout {
                        spacing: 20

                        Button {
                            text: "-"
                            font.pointSize: 30
                            width: 60
                            height: 60
                            autoRepeat: true
                            autoRepeatDelay: 600
                            background: Rectangle {
                                color: Material.accent
                                radius: height / 2
                            }
                            onClicked: progressBarFoot.value = Math.max(progressBarFoot.from, progressBarFoot.value - 0.5)
                        }

                        ProgressBar {
                            id: progressBarFoot
                            from: 0
                            to: 5
                            value: 2.5
                            Layout.fillWidth: true
                        }

                        Button {
                            text: "+"
                            font.pointSize: 30
                            width: 60
                            height: 60
                            autoRepeat: true
                            autoRepeatDelay: 600
                            background: Rectangle {
                                color: Material.accent
                                radius: height / 2
                            }
                            onClicked: progressBarFoot.value = Math.min(progressBarFoot.to, progressBarFoot.value + 0.5)
                        }
                    }
                }

                ColumnLayout {
                    spacing: 5

                    Label {
                        text: qsTr("HEADREST HEIGHT LEVEL")
                        horizontalAlignment: Text.AlignHCenter
                        font.pointSize: 14
                        color: "white"
                    }

                    RowLayout {
                        spacing: 20

                        Button {
                            text: "-"
                            font.pointSize: 30
                            width: 60
                            height: 60
                            autoRepeat: true
                            autoRepeatDelay: 600
                            autoRepeatInterval: 300
                            background: Rectangle {
                                color: Material.accent
                                radius: height / 2
                            }
                            onClicked: progressBarHead.value = Math.max(progressBarHead.from, progressBarHead.value - 1)
                        }

                        ProgressBar {
                            id: progressBarHead
                            from: 0
                            to: 5
                            value: 2.5
                            Layout.fillWidth: true
                        }

                        Button {
                            text: "+"
                            font.pointSize: 30
                            width: 60
                            height: 60
                            autoRepeat: true
                            autoRepeatDelay: 600
                            autoRepeatInterval: 300
                            background: Rectangle {
                                color: Material.accent
                                radius: height / 2
                            }
                            onClicked: progressBarHead.value = Math.min(progressBarHead.to, progressBarHead.value + 1)
                        }
                    }
                }

                ColumnLayout {
                    spacing: 5

                    Label {
                        text: qsTr("SEAT CUSHION FIRMNESS LEVEL")
                        horizontalAlignment: Text.AlignHCenter
                        font.pointSize: 14
                        color: "white"
                    }

                    RowLayout {
                        spacing: 20

                        Button {
                            text: "-"
                            font.pointSize: 30
                            width: 60
                            height: 60
                            autoRepeat: true
                            autoRepeatDelay: 600
                            autoRepeatInterval: 300
                            background: Rectangle {
                                color: Material.accent
                                radius: height / 2
                            }
                            onClicked: progressBarCushion.value = Math.max(progressBarCushion.from, progressBarCushion.value - 1)
                        }

                        ProgressBar {
                            id: progressBarCushion
                            from: 0
                            to: 4
                            value: 2
                            Layout.fillWidth: true
                        }

                        Button {
                            text: "+"
                            font.pointSize: 30
                            width: 60
                            height: 60
                            autoRepeat: true
                            autoRepeatDelay: 600
                            autoRepeatInterval: 300
                            background: Rectangle {
                                color: Material.accent
                                radius: height / 2
                            }
                            onClicked: progressBarCushion.value = Math.min(progressBarCushion.to, progressBarCushion.value + 1)
                        }
                    }
                }

                RowLayout {
                    spacing: 20

                    Button {
                        text: qsTr("LOAD LAST SEAT CONFIGURATION")
                    }

                    Button {
                        text: qsTr("SAVE CURRENT SEAT CONFIGURATION")
                    }
                }
            }
        }
    }
}
