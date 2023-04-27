import QtQuick 2.0
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0


Button {
    id: root
    property color backgroundDefaultColor: "gray"
    property color backgroundPressedColor: Qt.darker(backgroundDefaultColor, 1.2)
    property color contentItemTextColor: "white"
    hoverEnabled: true

    Text{
        text:"Exit"
        anchors.centerIn: root
        font.bold: true
    }


    background: Rectangle {
        implicitWidth: 83
        implicitHeight: 37
        radius:3
        color: root.down ? root.backgroundPressedColor : root.backgroundDefaultColor


        Rectangle {
            anchors.fill: parent
            color: "#20000000"
            opacity: root.hovered
            Behavior on opacity {
                NumberAnimation { duration: 300 }
            }
        }


    }
}
