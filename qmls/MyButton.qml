import QtQuick
import QtQuick.Controls
import "../moduleqml"

Button {
    id: root

    property int buttonType
    property string color: buttonType == ButtonType.typeNumber ? "#ffffff" : "#ffd7cd"
    property string hoveredColor: buttonType == ButtonType.typeNumber ? "#d6d6d6" : "#ecbbaf"
    property int fSize: buttonType == ButtonType.typeOperator ? 25 : 15
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
