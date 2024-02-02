import QtQuick 2.15
import QtQuick.Controls 2.15

ListView {
    width: 180; height: 200

    model: ContactModel {}
    delegate: Text {
        text: name + ": " + number
    }
}
