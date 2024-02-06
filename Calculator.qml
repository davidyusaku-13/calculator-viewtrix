import QtQuick 6.5
import QtQuick.Controls 6.5

Rectangle {
    id: root

    width: 330
    height: 500
    opacity: 1
    color: "#a6a6a6"

    property bool rectState: false

    Button {
        id: history
        x: 0
        y: 0
        width: 30
        height: 30
        text: qsTr("")

        background: Rectangle{
            width: history.width
            height: history.height

            color: parent.down ? root.color : parent.hovered ? "#858585" : root.color
            radius: 10

            Image{
                x: 8
                y: 8
                width: parent.width - 15
                height: parent.height - 15
                source:  "history icon.png"
            }
        }

        MouseArea{
             anchors.fill: parent
             onClicked: {
                 if(rectState === false){
                     animationUp.running = true
                     layerRectangle.visible = true
                     rectState = true
                 }else{
                     animationDown.running = true
                     layerRectangle.visible = false
                     rectState = false
                 }
             }
        }
    }

    Grid {
        id: grid
        x: 23
        y: 118
        width: 284
        height: 357
        spacing: 8
        rows: 5
        columns: 4

        Repeater{
            model: root.model
            MyButton{
                required property var model
                name: model.name
                buttonType: model.buttonType
            }
        }
    }


    Rectangle {
        id: layerRectangle
        x: 0
        y: 0
        width: 330
        height: 500
        opacity: 0.5
        visible: false
        color: "#000000"
    }

    property list<Dictionary> model:[
        Dictionary{
            name:"C"
            buttonType: typeFunction
        },
        Dictionary{
            name:"CE"
            buttonType: typeFunction
        },
        Dictionary{
            name:"DEL"
            buttonType: typeFunction
        },
        Dictionary{
            name:"÷"
            buttonType: typeOperator
        },
        Dictionary{
            name:"7"
            buttonType: typeNumber
        },
        Dictionary{
            name:"8"
            buttonType: typeNumber
        },
        Dictionary{
            name:"9"
            buttonType: typeNumber
        },
        Dictionary{
            name:"×"
            buttonType: typeOperator
        },
        Dictionary{
            name:"4"
            buttonType: typeNumber
        },
        Dictionary{
            name:"5"
            buttonType: typeNumber
        },
        Dictionary{
            name:"6"
            buttonType: typeNumber
        },
        Dictionary{
            name:"-"
            buttonType: typeOperator
        },
        Dictionary{
            name:"1"
            buttonType: typeNumber
        },
        Dictionary{
            name:"2"
            buttonType: typeNumber
        },
        Dictionary{
            name:"3"
            buttonType: typeNumber
        },
        Dictionary{
            name:"+"
            buttonType: typeOperator
        },
        Dictionary{
            name:"0"
            buttonType: typeNumber
        },
        Dictionary{
            name:"00"
            buttonType: typeNumber
        },
        Dictionary{
            name:"."
            buttonType: typeNumber
        },
        Dictionary{
            name:"="
            buttonType: typeOperator
        }
    ]

    Rectangle {
        id: historyWindow
        x: 0
        y: 600
        width: 330
        height: 400
        visible: true
        color: "#d6d6d6"

        radius: 10

        Button {
            id: trash
            x: 292
            y: 344
            width: 30
            height: 30
            background: Rectangle {
                width: trash.width
                height: trash.height
                color: parent.down ? historyWindow.color : parent.hovered ? root.color : historyWindow.color
                radius: 10
                Image {
                    x: 8
                    y: 8
                    width: parent.width - 15
                    height: parent.height - 15
                    source: "trash icon.png"
                }
            }
        }

        ListView {
            id: historyList
            x: 8
            y: 8
            width: 314
            height: 330

            model: ListModel {
                id: myModel
                ListElement {
                    time: "06/02/2024 12:00 PM"
                    name: "a+b-c=d"
                }

                ListElement {
                    time: "06/02/2024 12:00 PM"
                    name: "a+b-c=d"
                }
            }
            delegate: Item {
                x: 5
                width: 80
                height: 40

                Text {
                    color: "#63000000"
                    font.family: "Lato"
                    font.styleName: "Regular"
                    font.pixelSize: 10
                    text: time
                    anchors.verticalCenter: parent.verticalCenter
                }
                Text {
                    font.pixelSize: 15
                    text: "\n\n" + name
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }

        PropertyAnimation{
            id: animationUp
            target: historyWindow
            property: "y"
            to: root.height - historyWindow.height + 20
            duration: 500
        }

        PropertyAnimation{
            id: animationDown
            target: historyWindow
            property: "y"
            to: root.height
            duration: 500
        }
    }


    MyText{
        id: myText
        x: 0
        y: 0
        width: 330
        height: 118
        topPadding: 20
        rightPadding: 23

        name: "0"
        size: 60
    }
}
