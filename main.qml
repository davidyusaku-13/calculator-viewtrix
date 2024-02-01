import QtQuick 6.5
import QtQuick.Controls 6.5
import Backend 1.0

ApplicationWindow {
    id: root
    title: qsTr("Calculator")

    visible: true
    width: 330
    height: 500
    maximumWidth: width
    minimumWidth: width
    maximumHeight: height
    minimumHeight: height

    Calculator {
        id: calculator
        anchors.fill: parent
        manager: CalculatorManager {
            logic: CalculatorLogic {}
        }
    }
}
