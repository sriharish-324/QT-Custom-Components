import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Rectangle{
    property int flag: 1
    width: 80
    height: 70
    Image {
        id:imagebutton
        source:'file:///C:/Users/sriha/Downloads/Pause.png'
        height:80
        width:80
        anchors.centerIn: parent
        MouseArea {
            anchors.fill: parent
            onClicked: {
               console.info("image clicked!")

                if(flag==1){
                    imagebutton.source='file:///C:/Users/sriha/Downloads/run.png';
                    flag=0;

                }
                else {
                    imagebutton.source='file:///C:/Users/sriha/Downloads/pause.png';
                    flag=1;

                }

            }

        }
    }
}
