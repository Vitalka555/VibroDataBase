import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
Item {
    id: item1    
    RowLayout {
        anchors.fill: parent
        Rectangle {
            id: rec1
            z: 1
            anchors.left: parent.left            
            anchors.top: parent.top            
            height: item1.height
            width: 300
            color: "white"
            border.width: 2
            border.color: "#353637"
            Row{
                id: row1                
                anchors.left: rec1.left
                anchors.leftMargin: 5
                anchors.right: rec1.right
                anchors.rightMargin: 5
                anchors.top: rec1.top
                anchors.topMargin: 5
                height: 40
                spacing: 5                
                TextField {
                    id: tf1
                    width: 200
                    placeholderText: "Идентификатор"
                    font.pixelSize: 20
                }
                Button {
                    width: rec1.width - tf1.width - 15
                    highlighted: true
                    Text {
                        id: name1
                        text: qsTr("Поиск")
                        font.family: "Arial"
                        font.bold: true
                        color: "white"
                        font.pixelSize: 20
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }
            /* Область списка */
            Rectangle {
                id: rec2
                color: "transparent"
                border.width: 1
                border.color: "#353637"
                width: rec1.width - 10
                anchors.left: rec1.left
                anchors.leftMargin: 5
                anchors.top: row1.bottom
                anchors.topMargin: 5
                anchors.bottom: row2.top
                anchors.bottomMargin: 5                
                Flickable {
                    id: view
                    width: rec2.width
                    anchors.fill: parent
                    contentWidth: rec2.width
                    ListView {
                        id: list
                        width: rec2.width
                        height: rec2.height
                        anchors.fill: parent
                        clip: true
                        model: QueryModel1
                        delegate: numberDelegate
                        focus: true
                        headerPositioning: ListView.OverlayHeader
                        spacing: 1                        
                        highlight: Rectangle {
                            id: svet                                    
                            y: list.currentItem.y;
                            Behavior on y { SpringAnimation { spring: 2; damping: 0.1 } }
                            color: "#1E90FF"
                        }
                            highlightFollowsCurrentItem: true
                            highlightMoveDuration : 100
            }
                    Component {
                        id: numberDelegate
                        RowLayout {
                            id: wrapper
                            property int number: index
                            width: ListView.view.width
                            height: 40                            
                            property var view: ListView.view
                            property var isCurrent: ListView.isCurrentItem
                            Rectangle {
                                id: rec3
                                MouseArea {
                                    id: mouse
                                    anchors.fill: parent
                                    onClicked: {
                                        view.currentIndex = model.index
                                        baza1.editEntry(list.currentIndex)
                                    }
                                }                                
                                width: parent.width
                                height: 40
                                color: "transparent"
                                border.color: "#353637"
                                Text {
                                    id: tex
                                    anchors.centerIn: parent
                                    font.pixelSize: 20
                                    text: Identifier
                                }
                                Text {
                                    id: text1
                                    font.pixelSize: 10
                                    text: list.currentIndex
                                }
                            }
                        }
                    }
                transitions: Transition {
                    NumberAnimation { properties: "opacity"; duration: 400 }
                }
            }
            }
            Row {
                id: row2
                anchors.left: rec1.left
                anchors.leftMargin: 5
                anchors.right: rec1.right
                anchors.rightMargin: 5
                anchors.bottom: rec1.bottom
                anchors.bottomMargin: 5
                height: 40
                spacing: 5
                Button {                    
                    highlighted: true
                    width: row2.width / 3 - 10 / 3
                    Text {
                        id: name2
                        text: qsTr("Создать")
                        font.family: "Arial"
                        font.bold: true
                        color: "white"
                        font.pixelSize: 12
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    onClicked: {
                        var component = Qt.createComponent("BazaOborudovaniaCreat.qml")
                        var window    = component.createObject(rec0)
                        window.show()
                    }
                }
                Button {                    
                    highlighted: true
                    width: row2.width / 3 - 10 / 3
                    Text {
                        id: name3
                        text: qsTr("Редактировать")
                        font.family: "Arial"
                        font.bold: true
                        color: "white"
                        font.pixelSize: 12
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
                Button {                    
                    highlighted: true
                    width: row2.width / 3 - 10 / 3
                    Text {
                        id: name4
                        text: qsTr("Удалить")
                        font.family: "Arial"
                        font.bold: true
                        color: "white"
                        font.pixelSize: 12
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                    }                    
                    onClicked: {
                        database.removeRecord(QueryModel1.getId(list.currentIndex))
                        QueryModel1.updateModel();
                    }
                }
            }
        }
Rectangle {
    id: rec0
    anchors.left: rec1.right
    anchors.top: parent.top
    anchors.right: parent.right
    height: item1.height
    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        BazaOborudovania1 {
            id: baza1
        }
        BazaOborudovania2 {
            id: baza2
        }
        BazaOborudovania3 {
        }
        BazaOborudovania4 {
        }
    }
        TabBar {
        id: tabBar
        height: 40
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Общие данные")
            font.pixelSize: 15
            font.family: "Arial"
            font.bold: true
        }
        TabButton {
            text: qsTr("Критерии")
            font.pixelSize: 15
            font.family: "Arial"
            font.bold: true
        }
        TabButton {
            text: qsTr("Подшипники")
            font.pixelSize: 15
            font.family: "Arial"
            font.bold: true
        }
        TabButton {
            text: qsTr("История измерений")
            font.pixelSize: 15
            font.family: "Arial"
            font.bold: true
        }
    }
    }
    }
}
