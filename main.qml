import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Video player")

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 5
        spacing: 5

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            border.width: 5
        }

        RowLayout {

            Repeater {
                id: repeater
                model: ["►", "▐ ▌", "■", "◄◄", "►►"]

                Button {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 20
                    text: modelData
                    font.pixelSize: 10
                }
            }
        }

        ProgressBar {
            Layout.fillWidth: true
            Layout.preferredHeight: 5
            value: 0.5
        }
    }
}
