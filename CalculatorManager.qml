import QtQuick
import Backend 1.0

QtObject {
    id: manager

    property string tempNum: "0"
    property list<real> numbers: []
    property list<string> operators: []
    property real result: 0

    required property var logic

    function clear() {
        tempNum = "0"
        numbers = []
        operators = []
        result = 0
    }

    function clearEntry() {
        tempNum = "0"
    }

    function del() {
        tempNum = tempNum.length > 1 ? tempNum.slice(0, -1) : "0"
    }

    function addTempNum(val) {
        if (tempNum === "0") {
            tempNum = val
        } else {
            tempNum += val
        }
    }

    function addOperator(val) {
        if (tempNum !== "0") {
            numbers.push(tempNum)
            operators.push(val)
            tempNum = "0"
        }
    }

    function equals() {
        if (tempNum !== "0") {
            numbers.push(tempNum)
            tempNum = logic.equals(numbers, operators)
            numbers = []
            operators = []
        }
    }

    function addDecimal() {
        tempNum = tempNum.includes(".", 0) ? tempNum : tempNum + "."
    }

    function callFunc(val) {
        if (val === "C") {
            clear()
        } else if (val === "CE") {
            clearEntry()
        } else if (val === "DEL") {
            del()
        } else if (val === "÷") {
            addOperator("divide")
        } else if (val === "7") {
            addTempNum(7)
        } else if (val === "8") {
            addTempNum("8")
        } else if (val === "9") {
            addTempNum("9")
        } else if (val === "×") {
            addOperator("multiply")
        } else if (val === "4") {
            addTempNum("4")
        } else if (val === "5") {
            addTempNum("5")
        } else if (val === "6") {
            addTempNum("6")
        } else if (val === "-") {
            addOperator("minus")
        } else if (val === "1") {
            addTempNum("1")
        } else if (val === "2") {
            addTempNum("2")
        } else if (val === "3") {
            addTempNum("3")
        } else if (val === "+") {
            addOperator("add")
        } else if (val === "0") {
            addTempNum("0")
        } else if (val === ".") {
            addDecimal()
        } else if (val === "=") {
            equals()
        }
    }
}
