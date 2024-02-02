import QtQuick 2.15
import QtQuick.Controls 2.15

Text {
    id: myText
    property string name:"Text"
    property string customFont:"Motley Forces"
    property int size:20

    width:200
    height:200

    text: name
    font.family: customFont
    font.pixelSize: size
    horizontalAlignment: Text.AlignRight
    verticalAlignment: Text.AlignVCenter
}


