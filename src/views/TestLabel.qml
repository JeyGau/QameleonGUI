import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts 1.15
import qameleon.controls 1.0 as Qameleon

Qameleon.Page {
    title: "Test Label"

    ScrollView {
        anchors.centerIn: parent

        ColumnLayout {
            anchors.fill: parent

            Qameleon.Label {
                text: "Default style"
            }

            Qameleon.Label {
                text: "Custom style"

                style {
                    typography {
                        color: Material.color(Material.Green)
                        font.pixelSize: 20
                    }

                    background {
                        color: Material.color(Material.Green, Material.Shade200)
                        radius: 5

                        border {
                            color: Material.color(Material.Green)
                        }

                    }

                }

            }

        }

    }

}
