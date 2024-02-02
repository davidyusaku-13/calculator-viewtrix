import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: root

    readonly property int typeNumber:0
    readonly property int typeOperator:1
    readonly property int typeFunction:2

    property int buttonType
    property string color: buttonType==typeNumber ? "#ffffff" : "#ffd7cd"
    property string hoveredColor: buttonType==typeNumber ? "#d6d6d6" : "#ecbbaf"
    property int fSize: buttonType==typeOperator ? 25 : 18
    property alias name: root.text

    width: 65
    height: 65

    text: qsTr("Button")
    font.family: "Motley Forces"
    font.pointSize: fSize

    background: Rectangle {
        radius: 25
        color: parent.down ? root.color : parent.hovered ? root.hoveredColor : root.color
    }
}


