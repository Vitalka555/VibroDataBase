import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1

    ColumnLayout {
        id: column1
        spacing: 10
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        width: 400

        RowLayout {
            id: row1
            height: 40
            anchors.right: column1.right
            anchors.rightMargin: 0
//            anchors.top: column1.top
//            anchors.topMargin: 10
            anchors.left: column1.left
            anchors.leftMargin: 10

            Label {
                id: label1
                text: qsTr("Идентификатор:")
                font.pixelSize: 16
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: row1.left
                anchors.leftMargin: 10
            }

            TextField {
                id: identifier
                //property string IDENTIFIKATOR: identifikator.text
                text: qsTr("")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 16
                anchors.left: row1.left
                anchors.leftMargin: 150
                anchors.right: row1.right
                anchors.rightMargin: 0
            }
        }

        RowLayout {
            id: row2
            height: 40
            anchors.right: column1.right
            anchors.rightMargin: 0
//            anchors.top: column1.top
//            anchors.topMargin: 10
            anchors.left: column1.left
            anchors.leftMargin: 10

            Label {
                id: label2
                text: qsTr("Предприятие:")
                font.pixelSize: 16
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: row2.left
                anchors.leftMargin: 10
            }

            TextField {
                id: textField2
                text: qsTr("")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 16
                anchors.left: row2.left
                anchors.leftMargin: 150
                anchors.right: row2.right
                anchors.rightMargin: 0
            }
        }
        RowLayout {
            id: row3
            height: 40
            anchors.right: column1.right
            anchors.rightMargin: 0
//            anchors.top: column1.top
//            anchors.topMargin: 10
            anchors.left: column1.left
            anchors.leftMargin: 10

            Label {
                id: label3
                text: qsTr("Цех:")
                font.pixelSize: 16
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: row3.left
                anchors.leftMargin: 10
            }

            TextField {
                id: textField3
                text: qsTr("")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 16
                anchors.left: row3.left
                anchors.leftMargin: 150
                anchors.right: row3.right
                anchors.rightMargin: 0
            }
        }
        RowLayout {
            id: row4
            height: 40
            anchors.right: column1.right
            anchors.rightMargin: 0
//            anchors.top: column1.top
//            anchors.topMargin: 10
            anchors.left: column1.left
            anchors.leftMargin: 10

            Label {
                id: label4
                text: qsTr("Отметка:")
                font.pixelSize: 16
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: row4.left
                anchors.leftMargin: 10
            }

            TextField {
                id: textField4
                text: qsTr("")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 16
                anchors.left: row4.left
                anchors.leftMargin: 150
                anchors.right: row4.right
                anchors.rightMargin: 0
            }
        }
        RowLayout {
            id: row5
            height: 40
            anchors.right: column1.right
            anchors.rightMargin: 0
//            anchors.top: column1.top
//            anchors.topMargin: 10
            anchors.left: column1.left
            anchors.leftMargin: 10

            Label {
                id: label5
                text: qsTr("Помещение:")
                font.pixelSize: 16
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: row5.left
                anchors.leftMargin: 10
            }

            TextField {
                id: textField5
                text: qsTr("")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 16
                anchors.left: row5.left
                anchors.leftMargin: 150
                anchors.right: row5.right
                anchors.rightMargin: 0
            }
        }
        RowLayout {
            id: row6
            height: 40
            Layout.fillWidth: false
            anchors.right: column1.right
            anchors.rightMargin: 0
//            anchors.top: column1.top
//            anchors.topMargin: 10
            anchors.left: column1.left
            anchors.leftMargin: 10

        ColumnLayout {
            id: col6
            anchors.fill: parent
            spacing: 10

            Label {
                id: label6
                text: qsTr("Наименование:")
                font.pixelSize: 16
                //anchors.verticalCenter: parent.verticalCenter
                anchors.left: col6.left
                anchors.leftMargin: 10
            }

Rectangle {
    anchors.left: col6.left
    anchors.leftMargin: 10
    anchors.right: col6.right
    anchors.rightMargin: 0
    height: 100
    border.width: 1
    border.color: "#353637"
    Flickable {
        id: flickable
        anchors.fill: parent
        TextArea.flickable: TextArea {
                id: textField6
                //x: 0
                text: qsTr("")
                textFormat: Text.AutoText
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                font.pixelSize: 16
                anchors.fill: parent
        }
        ScrollBar.vertical: ScrollBar { }
    }
}
        }
        }
    }

    Button {
        id: button
        x: 456
        y: 407
        text: qsTr("Button")
    }


//    property alias textField1: textField1
//    property alias button1: button1

//    RowLayout {
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.topMargin: 20
//        anchors.top: parent.top

//        TextField {
//            id: textField1
//            placeholderText: qsTr("Text Field")
//        }

//        Button {
//            id: button1
//            text: qsTr("Press Me")
//        }
//    }

}

