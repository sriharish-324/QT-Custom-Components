import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Templates 2.12 as T

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Check Buttons")
GridLayout{

    height:200
    width:480
    columns:3

        //Image CheckBox STARTS
        Rectangle{
            width:50
            height:50

        Rectangle {
            id: checkbox
            width: 30
            height: 30
            anchors.centerIn:parent
            border.color:checked? "green":"red"
            border.width: 2
            color: checked ? "green" : "white"
            radius: 2
            property bool checked: false

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    checkbox.checked = !checkbox.checked
                }
            }

            Image {
                id: checkmark
                source: "file:///C:/Users/sriha/Downloads/yes.png"
                width: parent.width * 0.7
                height: parent.height * 0.7
                anchors.centerIn: parent
                visible: checkbox.checked
            }
        }
      }////Image CheckBox ENDS


        Rectangle{
            height:50
            width:50

        CheckBox {
                id: emojcheckbox
                indicator: Rectangle {
                    implicitWidth: 25
                    implicitHeight: 23
                    anchors.centerIn:parent
                    x: emojcheckbox.leftPadding
                    y: parent.height / 2 - height / 2
                    radius: 5
                    border.color: emojcheckbox.checked ? "green" : "red"

                    Text {
                        width: 14
                        height: 14
                        x: 1
                        y: 1
                        text: "✔️"

                        font.pointSize: 11.5
                        color: emojcheckbox.down ? "red" : "green"
                        visible: emojcheckbox.checked
                    }
                }
            }
        }//Check Box with EMOJ ENDS



        CheckBox {
                id: thumbs
                indicator: Rectangle {
                    implicitWidth: 25
                    implicitHeight: 23
                    anchors.centerIn:parent
                    x: thumbs.leftPadding
                    y: parent.height / 2 - height / 2
                    radius: 5
                   //border.color: thumbs.checked ? "green" : "red"

                    Text {
                        width: 14
                        height: 14
                        x: 1
                        y: 1
                        text: "👍"

                        font.pointSize: 11.5
                        color: thumbs.down ? "red" : "green"
                        visible: thumbs.checked
                    }
                    Text {
                        width: 14
                        height: 14
                        x: 1
                        y: 1
                        text: "👎"

                        font.pointSize: 11.5
                        color: thumbs.down ? "red" : "green"
                        visible: !thumbs.checked
                    }
                }
            }
        }
    //Check Box with EMOJ ENDS

   }

