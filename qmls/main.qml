import QtQuick
import QtQuick.Controls
import CalculatorLogic
import HistoryModel

ApplicationWindow {
    id: root
    title: qsTr("Calculator")

    property int w: 330
    property int h: 500

    visible: true
    width: root.w
    height: root.h
    maximumWidth: root.w
    minimumWidth: root.w
    maximumHeight: root.h
    minimumHeight: root.h

    Calculator {
        id: calculator
        anchors.fill: parent
        manager: CalculatorManager {
            logic: CalculatorLogic {}
            historyModel: HistoryModel{}
        }
    }
}
