import QtQuick 6.5
import QtQuick.Controls 6.5

Rectangle {
    id: root

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
            name:"."
            buttonType: typeNumber
        }
    ]

    width: 330
    height: 500
    color: "#a6a6a6"

    MyText{
        id: myText
        x: 0
        y: 0
        width: 330
        height: 100
        rightPadding: 10

        name: "0"
        size: 70
    }

    Grid {
        id: grid
        x: 10
        y: 100
        width: 310
        height: 390
        spacing: 10
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

    MyButton {
        id: myButton
        x: 170
        y: 420
        width: 150

        name: "="
        fSize: 25
        buttonType: 1
    }

}
