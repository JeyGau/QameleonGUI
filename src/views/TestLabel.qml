import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts
import org.qameleon.controls as Qameleon

Page {
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
