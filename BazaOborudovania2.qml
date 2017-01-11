import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: item1
    function editEntry(row) {
            mapper.updateData(list.currentIndex)
        }
    property int maxWidth: baza2.width/2
    Rectangle {
        id: rec
        height: baza2.height/3
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        width: baza2.width*2/3
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
        width: maxWidth*4/3
    Label {
        property string text1: "Неизвестно"
        property string text11: text1 !== "" ? text1 : "неизвестно"
        id: radialalign
        //anchors.horizontalCenter: parent.horizontalCenter
        text: "Допустимая радиальная несоосность, мм: " + text11
        font.bold: true
        font.pixelSize: 16
        width: maxWidth*4/3
        wrapMode: Text.WordWrap
    }
    }
    Row {
        id: row3
        anchors.top: row2.bottom
        width: maxWidth*4/3
    Label {
        property string text2: "Неизвестно"
        property string text22: text2 !== "" ? text2 : "неизвестно"
        id: angularalign
        //anchors.horizontalCenter: parent.horizontalCenter
        text: "Допустимая угловая несоосность, мм: " + text22
        font.bold: true
        font.pixelSize: 16
        width: maxWidth*4/3
        wrapMode: Text.WordWrap
    }
    }
    Row {
        id: row4
        anchors.top: row3.bottom
        width: maxWidth*4/3
    Label {
        property string text3: "Неизвестно"
        property string text33: text3 !== "" ? text3 : "неизвестно"
        id: restingpawsdrive
        //anchors.horizontalCenter: parent.horizontalCenter
        text: "Допустимая неплотность прилегания лап привода, мм: " + text33
        font.bold: true
        font.pixelSize: 16
        width: maxWidth*4/3
        wrapMode: Text.WordWrap
    }
    }
    Row {
        id: row5
        anchors.top: row4.bottom
        width: maxWidth*4/3
    Label {
        property string text4: "Неизвестно"
        property string text44: text4 !== "" ? text4 : "неизвестно"
        id: restingpawstm
        //anchors.horizontalCenter: parent.horizontalCenter
        text: "Допустимая неплотность прилегания лап передаточного механизма, мм: " + text44
        font.bold: true
        font.pixelSize: 16
        width: maxWidth*4/3
        wrapMode: Text.WordWrap
    }
    }
    Row {
        id: row6
        anchors.top: row5.bottom
        width: maxWidth*4/3
        //width: swipeView.width/2
    Label {
        property string text5: "Неизвестно"
        property string text55: text5 !== "" ? text5 : "неизвестно"
        id: restingpawsam
        //anchors.horizontalCenter: parent.horizontalCenter
        text: "Допустимая неплотность прилегания лап исполнительного механизма, мм: " + text55
        font.bold: true
        font.pixelSize: 16
        width: maxWidth*4/3
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
            id: shema
            anchors.fill: parent
            width: parent.width
            height: parent.height
            fillMode: Image.PreserveAspectFit
            source: "/shema/" + file1 + ".jpg"
        }
    }

    Rectangle {
        id: vibro1
        anchors.top: rec.bottom
        height: baza1.height*1/2
        width: baza1.width/3
        color: "red"
    }

    Rectangle {
        id: vibro2
        anchors.top: rec.bottom
        anchors.left: vibro1.right
        height: baza1.height*1/2
        width: baza1.width/3
        color: "green"
    }

    Rectangle {
        id: vibro3
        anchors.top: rec.bottom
        anchors.left: vibro2.right
        height: baza1.height*1/2
        width: baza1.width/3
        color: "yellow"
    }

        Rectangle {
            id: param1
            anchors.top: vibro1.bottom
            //anchors.topMargin: 20
            width: maxWidth*2/3
            anchors.bottom: parent.bottom
            color: "blue"
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
            anchors.top: vibro1.bottom
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
            anchors.top: vibro1.bottom
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


    Component.onCompleted: {
        mapper.addMapping(identifier, (0x0100 + 2), "text")
        mapper.addMapping(radialalign, (0x0100 + 27), "text1")
        mapper.addMapping(angularalign, (0x0100 + 28), "text2")
        mapper.addMapping(restingpawsdrive, (0x0100 + 29), "text3")
        mapper.addMapping(restingpawstm, (0x0100 + 30), "text4")
        mapper.addMapping(restingpawsam, (0x0100 + 31), "text5")
        mapper.addMapping(shema, (0x0100 + 25), "file")
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
