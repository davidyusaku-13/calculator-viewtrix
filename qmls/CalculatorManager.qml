import QtQuick
import CalculatorLogic
import HistoryModel
import "../moduleqml"

QtObject {
    id: manager

    property string displayNum: "0"
    property list<real> numbers: []
    property list<string> operators: []
    property real result: 0
    property string tempResult: ""

    required property HistoryModel historyModel
    required property var logic

    function clear() {
        displayNum = "0"
        numbers = []
        operators = []
        result = 0
    }

    function clearEntry() {
        displayNum = "0"
    }

    function del() {
        displayNum = displayNum.length > 1 ? displayNum.slice(0, -1) : "0"
    }

    function addDisplayNum(val) {
        if(displayNum.length<20){
            if (val==="."){
                addDecimal()
            } else if(val==="00"){
                if(displayNum === "0"){
                    displayNum = "0"
                } else {
                    displayNum += val
                }
            } else {
                if (displayNum === "0") {
                    displayNum = val
                } else {
                    displayNum += val
                }
            }
        }
    }

    function addOperator(val) {
        numbers.push(displayNum)
        operators.push(val)
        tempResult += displayNum + " " + val + " "
        displayNum = "0"
    }

    function equals() {
        numbers.push(displayNum)
        result = logic.equals(numbers, operators)
        result = result.toFixed(4)
        tempResult += displayNum + " = " + result

        if (tempResult.length > 37) {
            tempResult = tempResult.substring(0, 37) + "\n" + tempResult.substring(37) + "\n"
        }

        historyModel.addItem(tempResult)

        displayNum = result
        tempResult = ""
        numbers = []
        operators = []
    }

    function addDecimal() {
        displayNum = displayNum.includes(".", 0) ? displayNum : displayNum + "."
    }

    function callFunc(type, val) {
        if(val==="="){
            equals()
        } else {
            switch(type){
                case ButtonType.typeNumber:
                    addDisplayNum(val)
                    break
                case ButtonType.typeOperator:
                    addOperator(val)
                    break
                case ButtonType.typeFunction:
                    switch(val){
                        case "C":
                            clear()
                            break
                        case "CE":
                            clearEntry()
                            break
                        case "DEL":
                            del()
                            break
                    }
            }
        }
    }
}
