

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import Kalkulator

Rectangle {
    id: rectangle
    width: 330
    height: 500

    color: Constants.backgroundColor

    Grid {
        id: grid
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 47
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        scale: 1
        spacing: 10
        verticalItemAlignment: Grid.AlignBottom
        horizontalItemAlignment: Grid.AlignHCenter
        topPadding: 0
        rows: 5
        antialiasing: false
        layoutDirection: Qt.LeftToRight
        flow: Grid.TopToBottom
        columns: 4

        Button {
            id: button
            width: 70
            height: 70
            text: qsTr("C")
            font.family: "Motley Forces"
            font.pointSize: 15
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffd7cd"
                radius: 10
                border.width: 0
            }
        }

        Button {
            id: button1
            width: 70
            height: 70
            text: qsTr("7")
            font.pointSize: 15
            font.family: "Motley Forces"
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffffff"
                radius: 10
            }
        }

        Button {
            id: button2
            width: 70
            height: 70
            text: qsTr("4")
            font.pointSize: 15
            font.family: "Motley Forces"
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffffff"
                radius: 10
            }
        }

        Button {
            id: button3
            width: 70
            height: 70
            text: qsTr("1")
            font.pointSize: 15
            font.family: "Motley Forces"
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffffff"
                radius: 10
            }
        }

        Button {
            id: button4
            width: 70
            height: 70
            text: qsTr("0")
            font.pointSize: 15
            font.family: "Motley Forces"
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffffff"
                radius: 10
            }
        }

        Button {
            id: button5
            width: 70
            height: 70
            text: qsTr("CE")
            font.family: "Motley Forces"
            font.pointSize: 15
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffd7cd"
                radius: 10
            }
        }

        Button {
            id: button6
            width: 70
            height: 70
            text: qsTr("8")
            font.pointSize: 15
            font.family: "Motley Forces"
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffffff"
                radius: 10
            }
        }

        Button {
            id: button7
            width: 70
            height: 70
            text: qsTr("5")
            font.pointSize: 15
            font.family: "Motley Forces"
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffffff"
                radius: 10
            }
        }

        Button {
            id: button8
            width: 70
            height: 70
            text: qsTr("2")
            font.family: "Motley Forces"
            font.pointSize: 15
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffffff"
                radius: 10
            }
        }

        Button {
            id: button9
            width: 70
            height: 70
            text: qsTr(".")
            font.family: "Motley Forces"
            font.pointSize: 15
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffffff"
                radius: 10
            }
        }

        Button {
            id: button10
            width: 70
            height: 70
            text: qsTr("DEL")
            font.family: "Motley Forces"
            font.pointSize: 15
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffd7cd"
                radius: 10
            }
        }

        Button {
            id: button11
            width: 70
            height: 70
            text: qsTr("9")
            font.family: "Motley Forces"
            font.pointSize: 15
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffffff"
                radius: 10
            }
        }

        Button {
            id: button12
            width: 70
            height: 70
            text: qsTr("6")
            font.family: "Motley Forces"
            font.pointSize: 15
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffffff"
                radius: 10
            }
        }

        Button {
            id: button13
            width: 70
            height: 70
            text: qsTr("3")
            font.family: "Motley Forces"
            font.pointSize: 15
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffffff"
                radius: 10
            }
        }

        Button {
            id: button14
            width: 70
            height: 70
            text: qsTr("Button")
            font.family: "Motley Forces"
            font.pointSize: 15
            clip: false
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffd7cd"
                radius: 10
            }
        }

        Button {
            id: button15
            width: 70
            height: 70
            text: qsTr("÷")
            font.family: "Motley Forces"
            font.pointSize: 25
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffd7cd"
                radius: 10
            }
        }

        Button {
            id: button16
            width: 70
            height: 70
            text: qsTr("×")
            font.family: "Motley Forces"
            font.pointSize: 25
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffd7cd"
                radius: 10
            }
        }

        Button {
            id: button17
            width: 70
            height: 70
            text: qsTr("-")
            font.family: "Motley Forces"
            font.pointSize: 25
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffd7cd"
                radius: 10
            }
        }

        Button {
            id: button18
            width: 70
            height: 70
            text: qsTr("+")
            font.family: "Motley Forces"
            font.pointSize: 25
            icon.cache: true
            highlighted: false
            flat: false
            icon.color: "#ffd7cd"
            background: Rectangle {
                color: "#ffd7cd"
                radius: 10
            }
        }
    }

    Text {
        id: text1
        property color property: "#ffffff"
        x: 0
        y: 0
        width: 330
        height: 96
        text: qsTr("0")
        font.pixelSize: 80
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        font.bold: false
        rightPadding: 10
        bottomPadding: 0
        leftPadding: 0
        topPadding: 0
        property string property1: "This is a string"
        property real property0: 0
        font.family: "Motley Forces"
    }

    Button {
        id: button19
        x: 169
        y: 422
        width: 151
        height: 70
        text: qsTr("=")
        font.family: "Motley Forces"
        font.pointSize: 25
        icon.cache: true
        highlighted: false
        flat: false
        icon.color: "#ffd7cd"
        background: Rectangle {
            color: "#ffd7cd"
            radius: 10
        }
    }
}
