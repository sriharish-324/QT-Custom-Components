import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Rectangle{
    width: 80
    height: 70
    Image {
        id:imagebutton
        source:'file:///C:/Users/sriha/Desktop/on.png'
        height:80
        width:80
        anchors.centerIn: parent
        MouseArea {
            anchors.fill: parent
            onClicked: {
               console.info("image clicked!")
                if(imagebutton.source == 'file:///C:/Users/sriha/Desktop/on.png'){
                    imagebutton.source='file:///C:/Users/sriha/Desktop/off.png';

                }
                else{
                imagebutton.source='file:///C:/Users/sriha/Desktop/on.png';

                }

            }

        }
    }
}
