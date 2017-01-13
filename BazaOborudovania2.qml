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
        id: rec00
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
        anchors.top: rec00.bottom
        height: baza2.height*1/2
        width: baza2.width/4
        //color: "red"
        RowLayout {
            id: vibro1param1
            anchors.top: parent.top
            width: parent.width
            Label {
                id: vib1par1
                //anchors.horizontalCenter: parent.horizontalCenter
                text: "Нормы вибрации, мм/с"
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro1param2
            anchors.top: vibro1param1.bottom
            anchors.topMargin: 20
            width: parent.width
            Label {
                id: vib1par2
                //anchors.horizontalCenter: parent.horizontalCenter
                text: "Холостой ход:"
                font.bold: true
                font.italic: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro1param3
            anchors.top: vibro1param2.bottom
            width: parent.width
            Label {
                id: vib1par3
                //anchors.horizontalCenter: parent.horizontalCenter
                text: "Норма"
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro1param4
            anchors.top: vibro1param3.bottom
            anchors.topMargin: 20
            width: parent.width
            Label {
                id: vib1par4
                //anchors.horizontalCenter: parent.horizontalCenter
                text: "Номинальный режим:"
                font.bold: true
                font.italic: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro1param5
            anchors.top: vibro1param4.bottom
            width: parent.width
            Label {
                id: vib1par5
                //anchors.horizontalCenter: parent.horizontalCenter
                text: "Норма"
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro1param6
            anchors.top: vibro1param5.bottom
            width: parent.width
            Label {
                id: vib1par6
                //anchors.horizontalCenter: parent.horizontalCenter
                text: "Ограничение эксплуатации"
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro1param7
            anchors.top: vibro1param6.bottom
            width: parent.width
            Label {
                id: vib1par7
                //anchors.horizontalCenter: parent.horizontalCenter
                text: "Отказ"
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro1param8
            anchors.top: vibro1param7.bottom
            anchors.topMargin: 20
            width: parent.width
            Label {
                id: vib1par8
                //anchors.horizontalCenter: parent.horizontalCenter
                text: "Рабочий диапазон:"
                font.bold: true
                font.italic: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro1param9
            anchors.top: vibro1param8.bottom
            width: parent.width
            Label {
                id: vib1par9
                //anchors.horizontalCenter: parent.horizontalCenter
                text: "Норма"
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro1param10
            anchors.top: vibro1param9.bottom
            width: parent.width
            Label {
                id: vib1par10
                //anchors.horizontalCenter: parent.horizontalCenter
                text: "Ограничение эксплуатации"
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro1param11
            anchors.top: vibro1param10.bottom
            width: parent.width
            Label {
                id: vib1par11
                //anchors.horizontalCenter: parent.horizontalCenter
                text: "Отказ"
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
    }

    Rectangle {
        id: vibro2
        anchors.top: rec00.bottom
        anchors.left: vibro1.right
        height: baza2.height*1/2
        width: baza2.width/4
        //color: "green"
        RowLayout {
            id: vibro2param1
            anchors.top: parent.top
            width: parent.width
            Label {
                id: vib2par1
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Привод"
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro2param2
            anchors.top: vibro2param1.bottom
            anchors.topMargin: 20
            width: parent.width
            Label {
                id: vib2par2
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro2param3
            anchors.top: vibro2param2.bottom
            width: parent.width
            Label {
                property string text6: "Неизвестно"
                property string text66: text6 !== "" ? text6 : "неизвестно"
                id: nhh
                anchors.horizontalCenter: parent.horizontalCenter
                text: text66 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "green"
            }
        }
        RowLayout {
            id: vibro2param4
            anchors.top: vibro2param3.bottom
            anchors.topMargin: 20
            width: parent.width
            Label {
                id: vib2par4
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro2param5
            anchors.top: vibro2param4.bottom
            width: parent.width
            Label {
                property string text7: "Неизвестно"
                property string text77: text7 !== "" ? text7 : "неизвестно"
                id: nomnormd
                anchors.horizontalCenter: parent.horizontalCenter
                text: text77 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "green"
            }
        }
        RowLayout {
            id: vibro2param6
            anchors.top: vibro2param5.bottom
            width: parent.width
            Label {
                property string text8: "Неизвестно"
                property string text88: text8 !== "" ? text8 : "неизвестно"
                id: nomogrd
                anchors.horizontalCenter: parent.horizontalCenter
                text: text88 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "orange"
            }
        }
        RowLayout {
            id: vibro2param7
            anchors.top: vibro2param6.bottom
            width: parent.width
            Label {
                property string text9: "Неизвестно"
                property string text99: text9 !== "" ? text9 : "неизвестно"
                id: nomotkazd
                anchors.horizontalCenter: parent.horizontalCenter
                text: text99 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "red"
            }
        }
        RowLayout {
            id: vibro2param8
            anchors.top: vibro2param7.bottom
            anchors.topMargin: 20
            width: parent.width
            Label {
                id: vib2par8
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro2param9
            anchors.top: vibro2param8.bottom
            width: parent.width
            Label {
                property string text16: "Неизвестно"
                property string text1616: text16 !== "" ? text16 : "неизвестно"
                id: rdnormd
                anchors.horizontalCenter: parent.horizontalCenter
                text: text1616 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "green"
            }
        }
        RowLayout {
            id: vibro2param10
            anchors.top: vibro2param9.bottom
            width: parent.width
            Label {
                property string text17: "Неизвестно"
                property string text1717: text17 !== "" ? text17 : "неизвестно"
                id: rdogrd
                anchors.horizontalCenter: parent.horizontalCenter
                text: text1717 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "orange"
            }
        }
        RowLayout {
            id: vibro2param11
            anchors.top: vibro2param10.bottom
            width: parent.width
            Label {
                property string text18: "Неизвестно"
                property string text1818: text18 !== "" ? text18 : "неизвестно"
                id: rdotkazd
                anchors.horizontalCenter: parent.horizontalCenter
                text: text1818 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "red"
            }
        }

    }

    Rectangle {
        id: vibro3
        anchors.top: rec00.bottom
        anchors.left: vibro2.right
        height: baza2.height*1/2
        width: baza2.width/4
        //color: "yellow"
        RowLayout {
            id: vibro3param1
            anchors.top: parent.top
            width: parent.width
            Label {
                id: vib3par1
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Передаточный механизм"
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro3param2
            anchors.top: vibro3param1.bottom
            anchors.topMargin: 20
            width: parent.width
            Label {
                id: vib3par2
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro3param3
            anchors.top: vibro3param2.bottom
            width: parent.width
            Label {
                id: vib3par3
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro3param4
            anchors.top: vibro3param3.bottom
            anchors.topMargin: 20
            width: parent.width
            Label {
                id: vib3par4
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro3param5
            anchors.top: vibro3param4.bottom
            width: parent.width
            Label {
                property string text10: "Неизвестно"
                property string text1010: text10 !== "" ? text10 : "неизвестно"
                id: nomnormtm
                anchors.horizontalCenter: parent.horizontalCenter
                text: text1010 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "green"
            }
        }
        RowLayout {
            id: vibro3param6
            anchors.top: vibro3param5.bottom
            width: parent.width
            Label {
                property string text11: "Неизвестно"
                property string text1111: text11 !== "" ? text11 : "неизвестно"
                id: nomogrtm
                anchors.horizontalCenter: parent.horizontalCenter
                text: text1111 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "orange"
            }
        }
        RowLayout {
            id: vibro3param7
            anchors.top: vibro3param6.bottom
            width: parent.width
            Label {
                property string text12: "Неизвестно"
                property string text1212: text12 !== "" ? text12 : "неизвестно"
                id: nomotkaztm
                anchors.horizontalCenter: parent.horizontalCenter
                text: text1212 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "red"
            }
        }
        RowLayout {
            id: vibro3param8
            anchors.top: vibro3param7.bottom
            anchors.topMargin: 20
            width: parent.width
            Label {
                id: vib3par7
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro3param9
            anchors.top: vibro3param8.bottom
            width: parent.width
            Label {
                property string text19: "Неизвестно"
                property string text1919: text19 !== "" ? text19 : "неизвестно"
                id: rdnormtm
                anchors.horizontalCenter: parent.horizontalCenter
                text: text1919 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "green"
            }
        }
        RowLayout {
            id: vibro3param10
            anchors.top: vibro3param9.bottom
            width: parent.width
            Label {
                property string text20: "Неизвестно"
                property string text2020: text20 !== "" ? text20 : "неизвестно"
                id: rdogrtm
                anchors.horizontalCenter: parent.horizontalCenter
                text: text2020 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "orange"
            }
        }
        RowLayout {
            id: vibro3param11
            anchors.top: vibro3param10.bottom
            width: parent.width
            Label {
                property string text21: "Неизвестно"
                property string text2121: text21 !== "" ? text21 : "неизвестно"
                id: rdotkaztm
                anchors.horizontalCenter: parent.horizontalCenter
                text: text2121 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "red"
            }
        }
    }
    Rectangle {
        id: vibro4
        anchors.top: rec00.bottom
        anchors.left: vibro3.right
        height: baza2.height*1/2
        width: baza2.width/4
        //color: "grey"
        RowLayout {
            id: vibro4param1
            anchors.top: parent.top
            width: parent.width
            Label {
                id: vib4par1
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Исполнительный механизм"
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro4param2
            anchors.top: vibro4param1.bottom
            anchors.topMargin: 20
            width: parent.width
            Label {
                id: vib4par2
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro4param3
            anchors.top: vibro4param2.bottom
            width: parent.width
            Label {
                id: vib4par3
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro4param4
            anchors.top: vibro4param3.bottom
            anchors.topMargin: 20
            width: parent.width
            Label {
                id: vib4par4
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro4param5
            anchors.top: vibro4param4.bottom
            width: parent.width
            Label {
                property string text13: "Неизвестно"
                property string text1313: text13 !== "" ? text13 : "неизвестно"
                id: nomnormam
                anchors.horizontalCenter: parent.horizontalCenter
                text: text1313 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "green"
            }
        }
        RowLayout {
            id: vibro4param6
            anchors.top: vibro4param5.bottom
            width: parent.width
            Label {
                property string text14: "Неизвестно"
                property string text1414: text14 !== "" ? text14 : "неизвестно"
                id: nomogram
                anchors.horizontalCenter: parent.horizontalCenter
                text: text1414 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "orange"
            }
        }
        RowLayout {
            id: vibro4param7
            anchors.top: vibro4param6.bottom
            width: parent.width
            Label {
                property string text15: "Неизвестно"
                property string text1515: text15 !== "" ? text15 : "неизвестно"
                id: nomotkazam
                anchors.horizontalCenter: parent.horizontalCenter
                text: text1515 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "red"
            }
        }
        RowLayout {
            id: vibro4param8
            anchors.top: vibro4param7.bottom
            anchors.topMargin: 20
            width: parent.width
            Label {
                id: vib4par7
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
            }
        }
        RowLayout {
            id: vibro4param9
            anchors.top: vibro4param8.bottom
            width: parent.width
            Label {
                property string text22: "Неизвестно"
                property string text2222: text22 !== "" ? text22 : "неизвестно"
                id: rdnormam
                anchors.horizontalCenter: parent.horizontalCenter
                text: text2222 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "green"
            }
        }
        RowLayout {
            id: vibro4param10
            anchors.top: vibro4param9.bottom
            width: parent.width
            Label {
                property string text23: "Неизвестно"
                property string text2323: text23 !== "" ? text23 : "неизвестно"
                id: rdogram
                anchors.horizontalCenter: parent.horizontalCenter
                text: text2323 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "orange"
            }
        }
        RowLayout {
            id: vibro4param11
            anchors.top: vibro4param10.bottom
            width: parent.width
            Label {
                property string text24: "Неизвестно"
                property string text2424: text24 !== "" ? text24 : "неизвестно"
                id: rdotkazam
                anchors.horizontalCenter: parent.horizontalCenter
                text: text2424 + " ед.изм."
                font.bold: true
                font.pixelSize: 16
                width: maxWidth*2/3
                wrapMode: Text.WordWrap
                color: "red"
            }
        }
    }

        Rectangle {
            id: temper1
            anchors.top: vibro1.bottom
            //anchors.topMargin: 20
            width: baza2.width/4
            anchors.bottom: parent.bottom
            //color: "blue"
            RowLayout {
                id: temp1par1
                anchors.top: parent.top
                Label {                    
                    text: "Температура отказа"
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
            RowLayout {
                id: temp1par2
                anchors.top: temp1par1.bottom
                anchors.topMargin: 20
                Label {
                    text: "t, °C"
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
        }
        Rectangle {
            id: temper2
            anchors.top: vibro1.bottom
            //anchors.topMargin: 20
            width: baza2.width/4
            anchors.bottom: parent.bottom
            anchors.left: temper1.right
            //color: "red"
            RowLayout {
                id: temp2par1
                anchors.top: parent.top
                width: parent.width
                Label {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Привод"
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
            RowLayout {
                id: temp2par2
                anchors.top: temp2par1.bottom
                anchors.topMargin: 20
                width: parent.width
                Label {
                    property string text25: "Неизвестно"
                    property string text2525: text25 !== "" ? text25 : "неизвестно"
                    id: totkazd
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: text2525
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                    color: "red"
                }
            }
        }
        Rectangle {
            id: temper3
            anchors.top: vibro1.bottom
            //anchors.topMargin: 20
            width: baza2.width/4
            anchors.bottom: parent.bottom
            anchors.left: temper2.right
            //color: "red"
            RowLayout {
                id: temp3par1
                anchors.top: parent.top
                width: parent.width
                Label {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Передаточный механизм"
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
            RowLayout {
                id: temp3par2
                anchors.top: temp3par1.bottom
                anchors.topMargin: 20
                width: parent.width
                Label {
                    property string text26: "Неизвестно"
                    property string text2626: text26 !== "" ? text26 : "неизвестно"
                    id: totkaztm
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: text2626
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                    color: "red"
                }
            }
        }
        Rectangle {
            id: temper4
            anchors.top: vibro1.bottom
            //anchors.topMargin: 20
            width: baza2.width/4
            anchors.bottom: parent.bottom
            anchors.left: temper3.right
            //color: "red"
            RowLayout {
                id: temp4par1
                anchors.top: parent.top
                width: parent.width
                Label {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Исполнительный механизм"
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                }
            }
            RowLayout {
                id: temp4par2
                anchors.top: temp4par1.bottom
                anchors.topMargin: 20
                width: parent.width
                Label {
                    property string text27: "Неизвестно"
                    property string text2727: text27 !== "" ? text27 : "неизвестно"
                    id: totkazam
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: text2727
                    font.bold: true
                    font.pixelSize: 16
                    width: maxWidth*2/3
                    wrapMode: Text.WordWrap
                    color: "red"
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
        mapper.addMapping(nhh, (0x0100 + 32), "text6")
        mapper.addMapping(nomnormd, (0x0100 + 33), "text7")
        mapper.addMapping(nomogrd, (0x0100 + 34), "text8")
        mapper.addMapping(nomotkazd, (0x0100 + 35), "text9")
        mapper.addMapping(nomnormtm, (0x0100 + 36), "text10")
        mapper.addMapping(nomogrtm, (0x0100 + 37), "text11")
        mapper.addMapping(nomotkaztm, (0x0100 + 38), "text12")
        mapper.addMapping(nomnormam, (0x0100 + 39), "text13")
        mapper.addMapping(nomogram, (0x0100 + 40), "text14")
        mapper.addMapping(nomotkazam, (0x0100 + 41), "text15")
        mapper.addMapping(rdnormd, (0x0100 + 42), "text16")
        mapper.addMapping(rdogrd, (0x0100 + 43), "text17")
        mapper.addMapping(rdotkazd, (0x0100 + 44), "text18")
        mapper.addMapping(rdnormtm, (0x0100 + 45), "text19")
        mapper.addMapping(rdogrtm, (0x0100 + 46), "text20")
        mapper.addMapping(rdotkaztm, (0x0100 + 47), "text21")
        mapper.addMapping(rdnormam, (0x0100 + 48), "text22")
        mapper.addMapping(rdogram, (0x0100 + 49), "text23")
        mapper.addMapping(rdotkazam, (0x0100 + 50), "text24")
        mapper.addMapping(totkazd, (0x0100 + 51), "text25")
        mapper.addMapping(totkaztm, (0x0100 + 52), "text26")
        mapper.addMapping(totkazam, (0x0100 + 53), "text27")
        }
}
