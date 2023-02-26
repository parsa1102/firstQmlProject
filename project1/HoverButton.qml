import QtQuick 2.15

Item {
    id: root
    property color color: "black"
    property color hoverColor: "black"
    property color clickColor: "orange"
    property color textColor: "white"
    property color textHover: "red"
    property alias title: display
    property alias area: mouseArea

    Rectangle{
        height: root.height
        width: root.width
        color: root.color
        clip: true

        Text {
            id: display
            text: ""
            anchors.centerIn: parent
            color: root.textColor
            font.bold: true
        }

        MouseArea{
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true

            onEntered:{
                parent.color = root.hoverColor
                display.color = root.textHover
            }
            onExited: {
                parent.color = root.color
                display.color = root.textColor
            }
            onPressed: {
                parent.color = root.clickColor
            }
            onReleased: {
                parent.color = root.hoverColor
            }

        }
    }

}
