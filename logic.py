from PySide6.QtCore import Slot, QObject
from PySide6.QtQml import QmlElement

QML_IMPORT_NAME = "CalculatorLogic"
QML_IMPORT_MAJOR_VERSION = 1


@QmlElement
class CalculatorLogic(QObject):
    def __init__(self):
        super().__init__()

    @Slot(list, list, result=float)
    def equals(self, nums, ops):
        result = float(nums[0])
        if len(ops) > 0:
            for i in range(1, len(nums)):
                if ops[i - 1] == "+":
                    result += float(nums[i])
                elif ops[i - 1] == "-":
                    result -= float(nums[i])
                elif ops[i - 1] == "×":
                    result *= float(nums[i])
                elif ops[i - 1] == "÷":
                    if float(nums[i]) != 0:
                        result /= float(nums[i])
                    else:
                        result = "Error: Division by zero"
        return result
        pass
