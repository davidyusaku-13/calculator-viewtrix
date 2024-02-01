import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: root

    property int buttonType
    property string color: buttonType==0 ? "#ffffff" : "#ffd7cd"
    property string hoveredColor: buttonType==0 ? "#d6d6d6" : "#ecbbaf"
    property int fSize: buttonType==1 ? 25 : 15
    property alias name: root.text

    width: 70
    height: 70

    text: qsTr("Button")
    font.family: "Motley Forces"
    font.pointSize: fSize

    background: Rectangle {
        radius: 10
        color: parent.down ? root.color : parent.hovered ? root.hoveredColor : root.color
    }
}
