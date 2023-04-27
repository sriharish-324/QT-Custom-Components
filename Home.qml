import QtQuick 2.12
import QtQuick.Controls 2.12



Rectangle{
    property int counter: 0
    id:out_rect
    height:50
    width:145
    border.color:"black"
    Rectangle{
        id:left_rect
        height:40
        width:40
       // radius:10
        color:"green"
        anchors.left:parent.left
        anchors.leftMargin: 5
        anchors.top:parent.top
        anchors.topMargin: 7
        Text {
            id: left_rect_text
            font.pointSize: 25
            color:"white"
            anchors.centerIn: parent
            //anchors.horizontalCenter: left_rect.horizontalCenter
            //anchors.verticalCenter: left_rect.verticalCenter
            text: qsTr("-")
        }

         MouseArea{
             anchors.fill:left_rect

             onClicked: {
                 counter-=5
             }
             onPressed: {
                left_rect.color="black"
             }
             onReleased: {
             left_rect.color="green"
             }
         }
    }

    TextField{
        id:t1_rect
        anchors.left: left_rect.right
        anchors.leftMargin: 0
       // anchors.right: right_rect.left
       // anchors.rightMargin: 40
        anchors.top:parent.top
        anchors.topMargin: 7
        width:45
        height:40
        placeholderText: "0"
        font.pointSize: 15
        horizontalAlignment: TextInput.AlignHCenter
        text: parseInt(counter)

    }
    Rectangle{
        id:right_rect
        height:40
        width:40
      //  radius:10
        color:"green"
        anchors.left:t1_rect.right
        anchors.leftMargin: 0
        anchors.top:parent.top
        anchors.topMargin: 7
        Text {
            id: right_rect_text
            font.pointSize: 25
            color:"white"
            anchors.centerIn: parent
            //anchors.horizontalCenter: left_rect.horizontalCenter
            //anchors.verticalCenter: left_rect.verticalCenter
            text: qsTr("+")
        }

    }
    MouseArea{
        anchors.fill:right_rect
        onClicked: {
            console.log("+")
            counter+=5
        }
        onPressed:{
            right_rect.color="black"
        }
        onReleased: {
            right_rect.color="green"
        }
    }


}
