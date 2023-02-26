import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root

    //property color bgcolor: "#black"
    property color buttonColor: "gray"
    property color hoverColor: "black"
    property color clickColor: "orange"
    property real size: 100

    Rectangle{
        id: background
        color: "gray"
        width: 100
        height: parent.height
        Column{
            anchors.fill: parent
            HoverButton{
                width: 100
                height: 50
                title.text: "coupe"
                color: root.buttonColor
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                area.onPressed:{
                    image.source = "qrc:/images/coupe.jpeg"
                    rec.color = "orange"
                }
                area.onReleased: rec.color = "back"
            }
            HoverButton{
                width: 100
                height: 50
                title.text: "sedan"
                color: root.buttonColor
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                area.onPressed:{
                    image.source = "qrc:/images/sedan.jpeg"
                    rec.color = "orange"
                }
                area.onReleased: rec.color = "back"
            }
            HoverButton{
                width: 100
                height: 50
                title.text: "SUV"
                color: root.buttonColor
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                area.onPressed:{
                    image.source = "qrc:/images/SUV.jpeg"
                    rec.color = "orange"
                }
                area.onReleased: rec.color = "back"
            }
        }
    }
    Rectangle{
        id: rec
        color: "black"
        x: 100
        y: 0
        width: parent.width - x
        height: parent.height - y
        Image{
            id: image
            anchors.margins: 25
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/coupe.jpeg"
        }
    }


}
