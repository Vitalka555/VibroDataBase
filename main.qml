import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.4
//import QtQuick.Controls.Material 2.0
//import QtQuick.Controls.Universal 2.0
import Qt.labs.settings 1.0
import QtQuick.Window 2.2


ApplicationWindow {
    id: window
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    visible: true
    //visibility: Window.FullScreen
    title: "VibroDataBase"

    ToolBar {
        id: toolBar1
        height: 40
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

        Button {
            id: toolButton1
            highlighted: true
            width: toolButton2.width
            Text {
                id: name1
                text: qsTr("Меню")
                font.family: "Arial"
                font.bold: true
                color: "white"
                font.pixelSize: 20
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            onClicked: drawer.open()
        }
        Pane {
            anchors.left: toolButton1.right
            anchors.right: toolButton2.left
            anchors.top: toolButton1.top
            anchors.bottom: toolButton1.bottom
            background: Rectangle {
                color: "#353637"
            }
        Label {
            id: label1
            Text {
                id: name3
                text: qsTr("VibroDataBase")
                font.family: "Arial"
                font.bold: true
                font.pixelSize: 20
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                color: "white"
            }
            anchors.horizontalCenter: parent.horizontalCenter
        }
        }
        Button {
            id: toolButton2
            highlighted: true
            width: name2.width + 20
            Text {
                id: name2
                text: qsTr("Настройки")
                font.family: "Arial"
                font.bold: true
                color: "white"
                font.pixelSize: 20;
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
        }
    }
    Drawer {
        id: drawer
        width: Math.min(window.width, window.height) / 4
        height: window.height
        ListView {
            id: listView
            currentIndex: -1
            anchors.fill: parent
            delegate: ItemDelegate {
                width: parent.width
                Text {
                    id: nameM
                    text: model.title
                    font.family: "Arial"
                    font.bold: true
                    color: "#000000"
                    font.pixelSize: 15
                    //anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
                //text: model.title
                highlighted: ListView.isCurrentItem
                onClicked: {
                    if (listView.currentIndex != index) {
                        listView.currentIndex = index
                         name3.text = "VibroDataBase: " + model.title
                        stackview.replace(model.source)
                    }
                    drawer.close()
                }
            }
            model: ListModel {
                ListElement { title: "Статистика"; source: "qrc:/Statistica.qml" }
                ListElement { title: "База оборудования"; source: "qrc:/BazaOborudovania.qml" }
                ListElement { title: "База измерений"; source: "qrc:/BazaIzmereni.qml" }
            }
            ScrollIndicator.vertical: ScrollIndicator { }
        }

        }

    StackView {
        id: stackview
        anchors.topMargin: 40
        anchors.fill: parent
//            initialItem: Pane {
//                id: pane
//            }
    }

}




