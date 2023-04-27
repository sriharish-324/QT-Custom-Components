import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.0
Rectangle{

TableView {
    x: 20
    y: 170
    width: 660
    height: 300
    TableViewColumn{ role: "title"  ; title: "X" ; width: 150 ;resizable: true ; movable: true }
    TableViewColumn{ role: "author" ; title: "Y" ; width: 150 ;resizable: true ; movable: true }
    TableViewColumn{ role: "year" ; title: "Z" ; width: 150 ;resizable: true ; movable: true }
    TableViewColumn{ role: "revision" ; title: "Empty" ; width: 200 ; resizable: true ; movable: true  }
    model: ListModel{
        id: tV

    }

    alternatingRowColors: true
    backgroundVisible: true
    headerVisible: true
    itemDelegate: Item {
        Text {
            anchors.verticalCenter: parent.verticalCenter
            elide: styleData.elideMode
            text: styleData.value
        } // text
    } // Item
}// TableView
Button {
    text: "Refresh"
    x:20
    y:130
    onClicked: {
        tV.append({title: x_value,
                   author: y_value,
                   year: z_value,
                   revision: "NIL"});
    }
}
}
