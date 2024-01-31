import QtQuick 6.5
import QtQuick.Controls 6.5

Rectangle {
    id: rectangle
    width: 330
    height: 500
    color: "#a6a6a6"

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
        topPadding: 5
        property string property1: "This is a string"
        property real property0: 0
        font.family: "Motley Forces"
    }

    Grid {
        id: grid
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        anchors.topMargin: 100
        anchors.bottomMargin: 10
        spacing: 10
        rows: 5
        columns: 4

        MyButton {
            id: myButton
            name:"C"
            fSize: 15
        }

        MyButton {
            id: myButton1
            name:"CE"
        }

        MyButton {
            id: myButton2
            name:"DEL"
        }

        MyButton {
            id: myButton3
            name:"÷"
            fSize:25
        }

        MyButton {
            id: myButton4
            name:"7"
            color:"#ffffff"
            hoveredColor: "#d6d6d6"
        }

        MyButton {
            id: myButton5
            name:"8"
            color:"#ffffff"
            hoveredColor: "#d6d6d6"
        }

        MyButton {
            id: myButton6
            name:"9"
            color:"#ffffff"
            hoveredColor: "#d6d6d6"
        }

        MyButton {
            id: myButton7
            name:"×"
            fSize: 30
        }

        MyButton {
            id: myButton8
            name:"4"
            color:"#ffffff"
            hoveredColor: "#d6d6d6"
        }

        MyButton {
            id: myButton9
            name:"5"
            color:"#ffffff"
            hoveredColor: "#d6d6d6"
        }

        MyButton {
            id: myButton10
            name:"6"
            color:"#ffffff"
            hoveredColor: "#d6d6d6"
        }

        MyButton {
            id: myButton11
            name:"-"
            fSize:25
        }

        MyButton {
            id: myButton12
            name:"1"
            color:"#ffffff"
            hoveredColor: "#d6d6d6"
        }

        MyButton {
            id: myButton13
            name:"2"
            color:"#ffffff"
            hoveredColor: "#d6d6d6"
        }

        MyButton {
            id: myButton14
            name:"3"
            color:"#ffffff"
            hoveredColor: "#d6d6d6"
        }

        MyButton {
            id: myButton15
            name:"+"
            fSize:25
        }

        MyButton {
            id: myButton16
            name:"0"
            color:"#ffffff"
            hoveredColor: "#d6d6d6"
        }

        MyButton {
            id: myButton17
            name:"."
            color:"#ffffff"
            hoveredColor: "#d6d6d6"
        }
    }

    MyButton {
        id: myButton19
        name:"="
        fSize: 25

        x: 170
        y: 420
        width: 150
    }
}
