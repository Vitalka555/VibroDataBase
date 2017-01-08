import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: item1
    function editEntry(row) {
            //open()
            mapper.updateData(list.currentIndex)
        }
    property int maxWidth: rec.width
    Rectangle {
        id: rec
        height: baza1.height/2
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        width: baza1.width/2
        //color: "red"
    Row {
        id: row1
    Label {
        id: identifier
        text: "Identifier"
        font.bold: true
        font.pixelSize: 30
    }
    }
    Row {
        id: row2
        anchors.top: row1.bottom
    Label {
        id: department
        text: "Цех"
        font.bold: true
        font.pixelSize: 20
        color: "green"
    }
    }
    Row {
        id: row3
        anchors.top: row2.bottom
        width: rec.width
    Label {
        id: building
        text: "Здание"
        font.bold: true
        font.pixelSize: 20
        color: "green"
        //contentWidth: 300
        //width: rec.width
    }
    }
    Row {
        id: row4
        anchors.top: row3.bottom
    Label {
        id: level
        text: "Отметка"
        font.bold: true
        font.pixelSize: 20
        color: "green"
    }
    }
    Row {
        id: row5
        anchors.top: row4.bottom
    Label {
        id: premises
        text: "Помещение"
        font.bold: true
        font.pixelSize: 20
        color: "green"
    }
    }
    Row {
        id: row6
        anchors.top: row5.bottom
        //width: swipeView.width/2
    Label {
        id: equipmentname
        text: "Наименование оборудования"
        font.bold: true
        font.pixelSize: 20
        color: "green"
        width: maxWidth
        wrapMode: Text.WordWrap
    }
    }

//    Text {
//        id: text1
////        width: 190
////        height: 14
//        text: qsTr("Text")
//        font.pixelSize: 12
//        //anchors.right: rec.right
//        //anchors.rightMargin: 0
//        //contentWidth: maxWidth
//        wrapMode: Text.WordWrap
//        width: maxWidth

//    }

    }

    Rectangle {
        id: rectop
        anchors.top: parent.top
        anchors.right: parent.right
        width: baza1.width/2
        height: baza1.height/2
        //color: "green"
    }

    Rectangle {
        id: recbottom
        anchors.bottom: parent.bottom
        height: baza1.height/2
        width: baza1.width
        //color: "blue"
        RowLayout {
            id: row7
            anchors.top: recbottom.top
            //width: swipeView.width/2
        Label {
            id: namedrive
            text: "Название привода: "
            font.bold: true
            font.pixelSize: 20
            //color: "green"
            width: maxWidth
            wrapMode: Text.WordWrap
        }
        Label {
            property string text5: "Неизвестно"
            property string text55: text5 !== "" ? text5 : "неизвестно"
            id: drivespecification
            anchors.left: namedrive.right
            text: text55
            font.bold: true
            font.pixelSize: 20
            //color: "green"
            width: maxWidth
            wrapMode: Text.WordWrap
        }
        }
        RowLayout {
            id: row8
            anchors.top: row7.bottom
            anchors.left: parent.left
            width: maxWidth
            //width: swipeView.width/2
        Label {
            property string text4: "Неизвестно"
            property string text44: text4 !== "" ? text4 : "неизвестно"
            id: drivepowertext
            text: "Мощность, кВт: " + text44
            font.bold: true
            font.pixelSize: 20
            //color: "green"
            width: maxWidth
            wrapMode: Text.WordWrap
        }
//        Label {
//            id: drivepower
//            anchors.left: drivepowertext.right
//            text: "Марка привода"
//            font.bold: true
//            font.pixelSize: 20
//            //color: "green"
//            width: maxWidth
//            wrapMode: Text.WordWrap
//        }
        }
        RowLayout {
            id: row9
            anchors.top: row7.bottom
            anchors.left: row8.right
            width: maxWidth
            //width: swipeView.width/2
        Label {
            property string text1: "Неизвестно"
            property string text11: text1 !== "" ? text1 : "неизвестно"
            id: rotationfrequencydrivetext
            text: "Частота вращения, об/мин: " + text11

            font.bold: true
            font.pixelSize: 20
            //color: "green"
            width: maxWidth
            wrapMode: Text.WordWrap
        }
//        Label {
//            id: rotationfrequencydrive
//            anchors.left: rotationfrequencydrivetext.right
//            text: "Частота"
//            font.bold: true
//            font.pixelSize: 20
//            //color: "green"
//            width: maxWidth
//            wrapMode: Text.WordWrap
//        }
        }
        RowLayout {
            id: row10
            anchors.top: row9.bottom
            anchors.left: parent.left
            width: maxWidth
        Label {
            property string text2: "Неизвестно"
            property string text22: text2 !== "" ? text2 : "неизвестно"
            id: drivemanufacturer
            text: "Производитель привода: " + text22
            font.bold: true
            font.pixelSize: 20
            //color: "green"
            width: maxWidth
            wrapMode: Text.WordWrap
        }
        }
        RowLayout {
            id: row11
            anchors.top: row10.bottom
            anchors.left: parent.left
            width: maxWidth
            //width: swipeView.width/2
        Label {
            property string text3: "Неизвестно"
            property string text33: text3 !== "" ? text3 : "неизвестно"
            id: drivenumber
            text: "Заводской номер привода: " + text33
            font.bold: true
            font.pixelSize: 20
            //color: "green"
            width: maxWidth
            wrapMode: Text.WordWrap
        }
        }
        RowLayout {
            id: row12
            anchors.top: row11.bottom
            //width: swipeView.width/2
        Label {
            id: nametransmissionmechanism
            text: "Название передаточного механизма: "
            font.bold: true
            font.pixelSize: 20
            //color: "green"
            width: maxWidth
            wrapMode: Text.WordWrap
        }
        Label {
            property string text6: "Неизвестно"
            property string text66: text6 !== "" ? text6 : "неизвестно"
            id: transmissionmechanismspecification
            anchors.left: nametransmissionmechanism.right
            text: text66
            font.bold: true
            font.pixelSize: 20
            //color: "green"
            width: maxWidth
            wrapMode: Text.WordWrap
        }
        }
        Row {
            id: row13
            anchors.top: row12.bottom
            width: maxWidth*2
            //width: swipeView.width/2
        Label {
            property string text7: "Неизвестно"
            property string text77: text7 !== "" ? text7 : "неизвестно"
            id: transmissionmechanismmanufacturer
            //anchors.left: parent.left
            text: "Производитель передаточного механизма: " + text77
            font.bold: true
            font.pixelSize: 20
            //color: "green"
            width: maxWidth*2
            wrapMode: Text.WordWrap
        }
        }

    }

//    Label {
//        id: label1
//        text: "Общие данные"
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.verticalCenter: parent.verticalCenter
//        font.bold: true
//        font.pointSize: 40
//        verticalAlignment: Text.AlignVCenter
//        horizontalAlignment: Text.AlignHCenter
//    }
    Component.onCompleted: {
        mapper.addMapping(identifier, (0x0100 + 2), "text")
        mapper.addMapping(level, (0x0100 + 3), "text")
        mapper.addMapping(premises, (0x0100 + 4), "text")
        mapper.addMapping(equipmentname, (0x0100 + 5), "text")
        mapper.addMapping(drivespecification, (0x0100 + 7), "text5")
        mapper.addMapping(drivepowertext, (0x0100 + 8), "text4")
        mapper.addMapping(rotationfrequencydrivetext, (0x0100 + 9), "text1")
        mapper.addMapping(drivemanufacturer, (0x0100 + 10), "text2")
        mapper.addMapping(drivenumber, (0x0100 + 11), "text3")
        mapper.addMapping(transmissionmechanismspecification, (0x0100 + 16), "text6")
        mapper.addMapping(transmissionmechanismmanufacturer, (0x0100 + 17), "text7")
        //mapper.addMapping(ceh, (0x0100 + 3), "text")
        }
}

