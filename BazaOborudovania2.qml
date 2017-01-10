import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: item1
    function editEntry(row) {
            mapper.updateData(list.currentIndex)
        }
    property int maxWidth: baza1.width/2
    Rectangle {
        id: rec
        height: baza1.height/3
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        width: baza1.width*2/3
    Row {
        id: row1
    Label {
        id: identifier
        text: "Identifier"
        font.bold: true
        font.pixelSize: 30
    }
    }
    RowLayout {
        id: row2
        anchors.top: row1.bottom
        width: parent.width
    Label {
        property string text1: "Неизвестно"
        property string text11: text1 !== "" ? text1 : "неизвестно"
        id: radialalign
        //anchors.horizontalCenter: parent.horizontalCenter
        text: "Допустимая радиальная несоосность, мм: " + text11
        font.bold: true
        font.pixelSize: 16
        width: maxWidth*2/3
        wrapMode: Text.WordWrap
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
    }

    Rectangle {
        id: rectop
        anchors.top: parent.top
        anchors.right: parent.right
        width: baza1.width/3
        height: baza1.height/3
        Image {
            property string file: "nophoto"
            property string file1: file !== "" ? file : "nophoto"
            id: photo
            anchors.fill: parent
            width: parent.width
            height: parent.height
            fillMode: Image.PreserveAspectFit
            source: "/photo/" + file1 + ".jpg"
        }
    }

    Rectangle {
        id: recbottom
        anchors.bottom: parent.bottom
        height: baza1.height*2/3
        width: baza1.width
        RowLayout {
            id: row7
            anchors.top: recbottom.top
        Label {
            id: namedrive
            text: "Привод: "
            font.bold: true
            font.pixelSize: 16
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
            font.pixelSize: 16
            width: maxWidth
            wrapMode: Text.WordWrap
        }
        }
        RowLayout {
            id: row8
            anchors.top: row7.bottom
            anchors.left: parent.left
            width: maxWidth
        Label {
            property string text4: "Неизвестно"
            property string text44: text4 !== "" ? text4 : "неизвестно"
            id: drivepowertext
            text: "Мощность, кВт: " + text44
            font.bold: true
            font.pixelSize: 16
            //color: "green"
            width: maxWidth
            wrapMode: Text.WordWrap
        }
        }
        RowLayout {
            id: row9
            anchors.top: row7.bottom
            anchors.left: row8.right
            width: maxWidth
        Label {
            property string text1: "Неизвестно"
            property string text11: text1 !== "" ? text1 : "неизвестно"
            id: rotationfrequencydrivetext
            text: "Частота вращения, об/мин: " + text11
            font.bold: true
            font.pixelSize: 16
            width: maxWidth
            wrapMode: Text.WordWrap
        }
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
            font.pixelSize: 16
            width: maxWidth
            wrapMode: Text.WordWrap
        }
        }
        RowLayout {
            id: row11
            anchors.top: row10.bottom
            anchors.left: parent.left
            width: maxWidth
        Label {
            property string text3: "Неизвестно"
            property string text33: text3 !== "" ? text3 : "неизвестно"
            id: drivenumber
            text: "Заводской номер привода: " + text33
            font.bold: true
            font.pixelSize: 16
            width: maxWidth
            wrapMode: Text.WordWrap
        }
        }
        RowLayout {
            id: row12
            anchors.top: row11.bottom
            anchors.topMargin: 20
        Label {
            id: nametransmissionmechanism
            text: "Передаточный механизм: "
            font.bold: true
            font.pixelSize: 16
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
            font.pixelSize: 16
            width: maxWidth
            wrapMode: Text.WordWrap
        }
        }
        Row {
            id: row13
            anchors.top: row12.bottom
            width: maxWidth*2
        Label {
            property string text7: "Неизвестно"
            property string text77: text7 !== "" ? text7 : "неизвестно"
            id: transmissionmechanismmanufacturer
            text: "Производитель передаточного механизма: " + text77
            font.bold: true
            font.pixelSize: 16
            width: maxWidth*2
            wrapMode: Text.WordWrap
        }
        }
        Row {
            id: row14
            anchors.top: row13.bottom
            width: maxWidth*2
        Label {
            property string text8: "Неизвестно"
            property string text88: text8 !== "" ? text8 : "неизвестно"
            id: transmissionmechanismnumber
            text: "Производитель передаточного механизма: " + text88
            font.bold: true
            font.pixelSize: 16
            width: maxWidth*2
            wrapMode: Text.WordWrap
        }
        }
        RowLayout {
            id: row15
            anchors.top: row14.bottom
            anchors.topMargin: 20
        Label {
            id: nameactuatingmechanism
            text: "Исполнительный механизм: "
            font.bold: true
            font.pixelSize: 16
            width: maxWidth
            wrapMode: Text.WordWrap
        }
        Label {
            property string text9: "Неизвестно"
            property string text99: text9 !== "" ? text9 : "неизвестно"
            id: actuatingmechanismspecification
            anchors.left: nameactuatingmechanism.right
            text: text99
            font.bold: true
            font.pixelSize: 16
            width: maxWidth
            wrapMode: Text.WordWrap
        }
        }
        Row {
            id: row16
            anchors.top: row15.bottom
            width: maxWidth*2
        Label {
            property string text10: "Неизвестно"
            property string text1010: text10 !== "" ? text10 : "неизвестно"
            id: rotationfrequencyam
            text: "Частота вращения, об/мин: " + text1010
            font.bold: true
            font.pixelSize: 16
            width: maxWidth*2
            wrapMode: Text.WordWrap
        }
        }
        Row {
            id: row17
            anchors.top: row16.bottom
            width: maxWidth*2
        Label {
            property string text11: "Неизвестно"
            property string text1111: text11 !== "" ? text11 : "неизвестно"
            id: actuatingmechanismmanufacturer
            text: "Производитель: " + text1111
            font.bold: true
            font.pixelSize: 16
            width: maxWidth*2
            wrapMode: Text.WordWrap
        }
        }
        Row {
            id: row18
            anchors.top: row17.bottom
            width: maxWidth*2
        Label {
            property string text12: "Неизвестно"
            property string text1212: text12 !== "" ? text12 : "неизвестно"
            id: actuatingmechanismnumber
            text: "Заводской номер: " + text1212
            font.bold: true
            font.pixelSize: 16
            width: maxWidth*2
            wrapMode: Text.WordWrap
        }
        }
        Rectangle {
            id: param1
            anchors.top: row18.bottom
            anchors.topMargin: 20
            width: maxWidth*2/3
            anchors.bottom: parent.bottom
            Row {
                id: row1param1
                anchors.top: parent.top
                Label {
                    id: label1
                    text: ""
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
            Row {
                id: row2param1
                anchors.top: row1param1.bottom
                anchors.topMargin: 20
                Label {
                    id: label2
                    text: "Расход: "
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
            Row {
                id: row3param1
                anchors.top: row2param1.bottom
                anchors.topMargin: 20
                Label {
                    id: label3
                    text: "Давление: "
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
        }
        Rectangle {
            id: param2
            anchors.top: row18.bottom
            anchors.topMargin: 20
            anchors.left: param1.right
            width: maxWidth*2/3
            anchors.bottom: parent.bottom
            RowLayout {
                id: row1param2
                anchors.top: parent.top
                width: parent.width
                Label {
                    id: label4
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Номинальный режим"
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
            RowLayout {
                id: row2param2
                anchors.top: row1param2.bottom
                anchors.topMargin: 20
                width: parent.width
                Label {
                    property string text13: "Неизвестно"
                    property string text1313: text13 !== "" ? text13 : "неизвестно"
                    id: nominalconditionsconsumption
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: text1313 + " ед.изм."
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
            RowLayout {
                id: row3param2
                anchors.top: row2param2.bottom
                anchors.topMargin: 20
                width: parent.width
                Label {
                    property string text15: "Неизвестно"
                    property string text1515: text15 !== "" ? text15 : "неизвестно"
                    id: nominalconditionspressure
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: text1515 + " ед.изм."
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
        }
        Rectangle {
            id: param3
            anchors.top: row18.bottom
            anchors.topMargin: 20
            anchors.left: param2.right
            width: maxWidth*2/3
            anchors.bottom: parent.bottom
            RowLayout {
                id: row1param3
                anchors.top: parent.top
                width: parent.width
                Label {
                    id: label5
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Рабочий диапазон"
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
            RowLayout {
                id: row2param3
                anchors.top: row1param3.bottom
                anchors.topMargin: 20
                width: parent.width
                Label {
                    property string text14: "Неизвестно"
                    property string text1414: text14 !== "" ? text14 : "неизвестно"
                    id: operatingrangeconsumption
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: text1414 + " ед.изм."
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
            RowLayout {
                id: row3param3
                anchors.top: row2param3.bottom
                anchors.topMargin: 20
                width: parent.width
                Label {
                    property string text16: "Неизвестно"
                    property string text1616: text16 !== "" ? text16 : "неизвестно"
                    id: operatingrangepresure
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: text1616 + " ед.изм."
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
        }

    }
    Component.onCompleted: {
        mapper.addMapping(identifier, (0x0100 + 2), "text")
//        mapper.addMapping(level, (0x0100 + 3), "text")
//        mapper.addMapping(premises, (0x0100 + 4), "text")
//        mapper.addMapping(equipmentname, (0x0100 + 5), "text")
//        mapper.addMapping(drivespecification, (0x0100 + 7), "text5")
//        mapper.addMapping(drivepowertext, (0x0100 + 8), "text4")
//        mapper.addMapping(rotationfrequencydrivetext, (0x0100 + 9), "text1")
//        mapper.addMapping(drivemanufacturer, (0x0100 + 10), "text2")
//        mapper.addMapping(drivenumber, (0x0100 + 11), "text3")
//        mapper.addMapping(transmissionmechanismspecification, (0x0100 + 16), "text6")
//        mapper.addMapping(transmissionmechanismmanufacturer, (0x0100 + 17), "text7")
//        mapper.addMapping(transmissionmechanismnumber, (0x0100 + 18), "text8")
//        mapper.addMapping(actuatingmechanismspecification, (0x0100 + 13), "text9")
//        mapper.addMapping(rotationfrequencyam, (0x0100 + 12), "text10")
//        mapper.addMapping(actuatingmechanismmanufacturer, (0x0100 + 14), "text11")
//        mapper.addMapping(actuatingmechanismnumber, (0x0100 + 15), "text12")
//        mapper.addMapping(photo, (0x0100 + 26), "file")
//        mapper.addMapping(nominalconditionsconsumption, (0x0100 + 22), "text13")
//        mapper.addMapping(operatingrangeconsumption, (0x0100 + 24), "text14")
//        mapper.addMapping(nominalconditionspressure, (0x0100 + 21), "text15")
//        mapper.addMapping(operatingrangepresure, (0x0100 + 23), "text16")
        }
}
