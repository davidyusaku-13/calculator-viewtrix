import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: root
    property string color: "#ffd7cd"
    property string hoveredColor: "#ecbbaf"
    property alias name: root.text
    property alias fSize: root.font.pointSize

    width: 70
    height: 70

    text: qsTr("")
    font.family: "Motley Forces"
    font.pointSize: 15

    background: Rectangle {
        radius: 10
        color: parent.down ? root.color : parent.hovered ? root.hoveredColor : root.color
    }
}
