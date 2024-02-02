import QtQuick 6.5
import QtQuick.Controls 6.5

Rectangle {
    id: root

    width: 330
    height: 500
    color: "#a6a6a6"

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

    Button {
        id: history
        x: 8
        y: 8
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

        onClicked: {
            if(historyWindow.visible === true){
                historyWindow.visible = false
            }else{
                historyWindow.visible = true
            }
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
        id: historyWindow
        x: 0
        y: 118
        width: 330
        height: 382
        visible: false
        color: "#d6d6d6"

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
    }
}
