    import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.1
import QtQuick.Dialogs 1.1
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
Rectangle{
    anchors.centerIn: parent
    height:500
    width:600
    border.color:"black"

    GridLayout{
    anchors.centerIn: parent
    height: 200
    width:200
    columns: 3
    columnSpacing: 10
    rowSpacing: 10
    anchors.fill: parent
    anchors.margins: 10
//button-color-change-STARTS
Rectangle{
    width:120
    height:70

    Rectangle {
        id: button
        width: 110
        height: 60
        color: "red"
        radius: 10
        anchors.centerIn: parent

        Text {
            id: buttonText
            text: "Click me"
            font.pointSize: 16
            color: "white"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (buttonText.text === "Click me") {
                    button.color = "green"
                    buttonText.text = "Clicked!"
                } else {
                    button.color = "red"
                    buttonText.text = "Click me"
                }
            }
        }
    }
}
    //button-color-change ENDS

   /*Button-change- in color  START*/
    Rectangle {
            width: 110
            height: 60
            Rectangle {
                id: btn_clra
                width: 100
                height: 50
                color: "red"
                radius: 10
                anchors.centerIn: parent
                Text {
                    id: btn_clrText
                    text: qsTr("Button")
                    color: "white"
                    anchors.centerIn: parent

                }
                MouseArea {
                    anchors.fill: parent

                    onClicked: {

                        btn_clrText.text = qsTr("Clicked"); //functions of a button
                        btn_clrText.color = "black";
                        btn_clr.color="green";

                    }



                }//mousearea
            }
    }/*Button-change- in color START*/




    //Nested Button START
    Rectangle{
        width: 110
        height: 70
    Rectangle{
        id:outerround
        width: 110
        height: 60
        border.color: "red"
        color:"red"
        radius: 10
        anchors.centerIn: parent
        Rectangle{
            id: innerround
            width: 100
            height: 50
            border.color: "green"
            radius: 5
            anchors.centerIn: parent
            Text {
                id: roundbuttonText
                text: qsTr("Click")
                color: "black"
               anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if (roundbuttonText.text === "Click") {
                        innerround.color = "green"
                        roundbuttonText.text = "Clicked!"
                    } else {
                        innerround.color="white"
                        roundbuttonText.text = "Click"
                    }
                }


            }
        }

    }
   }//Nested Button ENDS


     //IMGAE BUTTON STARTS
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
    }//IMAGE BUTTON ENDS

   PauseRun{

   }
    //ROUND BUTTON STARTS
    Rectangle {
            width: 60
            height: 60
            Rectangle{
                id:circle
                width:50
                height:50
                radius:30
                color:"red"
                 anchors.centerIn: parent
            }
            Text {
                id:circletxt
                text: qsTr("press")
                color: "white"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                   circletxt.text="pressed"
                    circle.color="green"
                }

            }
 }//ROUND BUTTON ENDS
    Switches{

    }
    Home{

    }
    ButtonHover{
        id:bt

        MouseArea{
            anchors.fill:bt
            onClicked: {
                messageDialog.visible=true
            }
        }
    }

    //Button Which reset automatically after 2sec START
    Rectangle{
        height:60
        width:110
        Rectangle {
            id: buttonRect
            width: 100
            height: 50
            color: "red"
            radius:10
            anchors.centerIn: parent
            Text {
                id: textbuttonrect
                text: qsTr("send")
                anchors.centerIn: parent
                color:"white"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    buttonRect.color = "green"
                    textbuttonrect.text="click"
                    var timer = Qt.createQmlObject('import QtQuick 2.0; Timer {interval: 1000; onTriggered: buttonRect.color = "red",textbuttonrect.text="send";}',textbuttonrect, buttonRect);
                    timer.start();

                }
            }
        }
    }
    //Button Which reset automatically after 2sec ENDS


Rectangle{
    id:home
    width:60
    height:40
    color:"gray"
    radius:3
    Text{
        id:tex
        text:"Home"
        font.bold: true
        anchors.centerIn:home
    }
    MouseArea{
        anchors.fill:home
        onClicked: {

        }
        onPressed: {
            home.color="black"
            tex.color="white"
        }
        onReleased: {
            home.color="gray"
            tex.color="black"
        }
    }
}
Rectangle{
    id:exit
    width:60
    height:40
    color:"gray"
    radius:3

    Text{
        id:ex
        text:"Exit"
        font.bold: true
        anchors.centerIn:exit
    }
    MouseArea{
        anchors.fill:exit
        onClicked: {
        messageDialog.visible=true
        }
        onPressed: {
            exit.color="black"
            ex.color="white"
        }
        onReleased: {
            exit.color="gray"
            ex.color="black"
        }
    }
}
 }//GridLayout ENDS

    MessageDialog {
        id: messageDialog
        title: "Exit"
        text: "Are you Sure You Want to Exit"
        standardButtons: StandardButton.Yes|
                StandardButton.No
        onYes: {

            Qt.quit()
        }



    }
}

}//windows
