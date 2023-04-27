import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.0


Window {
    id: winparent
    visible: true
    color: "gray"
    width: 700
    height: 500
    property int flag: 0
    property int x_value: 0
    property int y_value: 0
    property int z_value: 0

    TableViews{


    }//table



    Silders{
        id:xaxis
        onXsliderChanged: {
            x_value=val
            console.log("slider "+x_value)

        }
    }
    SliderY{
        id:yaxis
        anchors.left:xaxis.right
        anchors.leftMargin: 10
            onYsliderChanged: {
              y_value=val
            }
    }
    SliderZ{
        anchors.left:yaxis.right
        anchors.leftMargin: 10
            onZsliderChanged: {
              z_value=val
            }
    }
}  // window

