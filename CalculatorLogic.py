from PySide6.QtCore import Slot, QObject


class CalculatorLogic(QObject):
    def __init__(self):
        super().__init__()

    @Slot(list, list, result=float)
    def equals(self, nums, ops):
        result = float(nums[0])
        if len(ops) > 0:
            for i in range(1, len(nums)):
                if ops[i - 1] == "add":
                    result += float(nums[i])
                elif ops[i - 1] == "minus":
                    result -= float(nums[i])
                elif ops[i - 1] == "multiply":
                    result *= float(nums[i])
                elif ops[i - 1] == "divide":
                    if float(nums[i]) != 0:
                        result /= float(nums[i])
                    else:
                        result = "Error: Division by zero"
        return result
        pass
