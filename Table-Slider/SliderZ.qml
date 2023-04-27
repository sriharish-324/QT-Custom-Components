import QtQuick 2.12
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Rectangle{
    id:r1
    property int count:0
    property int sliderwidth: 100
    property int sliderheight:50
    property int handleheigh: 40
    signal zsliderChanged(int val)
    implicitWidth: sliderwidth

    implicitHeight:sliderheight
    width:247
    height:60
    border.color: "black"
    color:"white"
    Slider {
        id:s1
       // anchors.horizontalCenter: parent.horizontalCenter
        spacing: 20
        from: 1
        value: 25
        to: 360
        onValueChanged: {
            //console.log("value"+(value))
            zsliderChanged(value)
        }
    }
}
