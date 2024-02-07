from PySide6.QtCore import Qt, QAbstractListModel, Signal, Property, Slot, QModelIndex, Qt, QObject
from PySide6.QtQml import QmlElement
from datetime import datetime

QML_IMPORT_NAME = "HistoryModel"
QML_IMPORT_MAJOR_VERSION = 1


@QmlElement
class HistoryModelItem(QObject):
    def __init__(self, data, time, parent=None):
        super().__init__(parent)
        self._data = data
        self._time = time

    @Property(str)
    def data(self):
        return self._data

    @Property(str)
    def time(self):
        return self._time.strftime("%Y-%m-%d %H:%M:%S")


@QmlElement
class HistoryModel(QAbstractListModel):
    dataChanged = Signal(QModelIndex, QModelIndex)

    def __init__(self, parent=None):
        super().__init__(parent)
        self._items = []

    def rowCount(self, parent=QModelIndex()):
        return len(self._items)

    def data(self, index, role=Qt.DisplayRole):
        if not (0 <= index.row() < len(self._items)):
            return
        if role == Qt.DisplayRole:
            return self._items[index.row()].data
        elif role == Qt.UserRole + 1:
            return self._items[index.row()].time

    def roleNames(self):
        roles = super().roleNames()
        roles.update({
            Qt.DisplayRole: b"history",
            Qt.UserRole + 1: b"time"
        })
        return roles

    @Slot(str)
    def addItem(self, data):
        current_time = datetime.now()
        self.beginInsertRows(QModelIndex(), len(self._items), len(self._items))
        item = HistoryModelItem(data, current_time, self)
        self._items.append(item)
        self.endInsertRows()

    @Slot(int)
    def removeItem(self, index):
        if 0 <= index < len(self._items):
            self.beginRemoveRows(QModelIndex(), index, index)
            del self._items[index]
            self.endRemoveRows()

    @Slot()
    def clear(self):
        self.beginResetModel()
        self._items = []
        self.endResetModel()

    @Property(QObject, constant=True)
    def items(self):
        return self

    @Property(list, constant=True)
    def itemsData(self):
        return [item.data for item in self._items]
