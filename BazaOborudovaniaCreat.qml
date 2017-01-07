import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.1
import QtQuick.Layouts 1.0

Window {
    id: root
    width: 800;
    height: 600
    title: "Создать агрегат"

    Rectangle {
        id: rec0
//        anchors.left: rec1.right
//        anchors.top: parent.top
//        anchors.right: parent.right
//        height: item1.height
        anchors.fill: parent
        SwipeView {
            id: swipeView
    //        anchors.topMargin: 0
    //        anchors.bottomMargin: 0
    //        anchors.rightMargin: 0
    //        anchors.left: rec1.right
            anchors.fill: parent
            currentIndex: tabBar.currentIndex

            BazaOborudovaniaCreat1 {
            }
            BazaOborudovaniaCreat2 {
            }
            BazaOborudovaniaCreat3 {
            }
//            BazaOborudovaniaCreat4 {
//            }

    //        Page {
    //            Label {
    //                text: qsTr("Second page")
    //                anchors.centerIn: parent
    //            }
    //        }
        }

        //footer:
            TabBar {
            id: tabBar
            height: 40
            anchors.top: parent.top
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
//            TabButton {
//                id: button
////                x: 426
////                y: 402
//                text: qsTr("Сохранить")
//                onClicked: {
//                                database.insertIntoTable(identifikator.text)
//                                QueryModel1.updateModel() // И обновляем модель данных с новой записью
//            }
//            TabButton {
//                text: qsTr("История измерений")
//                font.pixelSize: 15
//                font.family: "Arial"
//                font.bold: true
//            }
        //}
        }
}
}
