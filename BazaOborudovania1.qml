import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: item1
    function editEntry(row) {
            //open()
            mapper.updateData(list.currentIndex)
        }
    Row {
        id: row1
    Label {
        id: identifikator
        text: "Identifikator"
        font.bold: true
        font.pixelSize: 30
    }
    }
    Row {
        id: row2
        anchors.top: row1.bottom
    Label {
        id: ceh
        text: "Ceh"
        font.bold: true
        font.pixelSize: 20
        color: "green"
    }
    }


    Label {
        id: label1
        text: "Общие данные"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.bold: true
        font.pointSize: 40
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
    Component.onCompleted: {
        mapper.addMapping(identifikator, (0x0100 + 2), "text")
        mapper.addMapping(ceh, (0x0100 + 3), "text")
        }
}

