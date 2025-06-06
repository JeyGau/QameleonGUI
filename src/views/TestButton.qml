import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts
import org.qameleon.controls as Qameleon

Page {
    title: "Test Button"

    ScrollView {
        anchors.centerIn: parent

        ColumnLayout {
            anchors.fill: parent

            Qameleon.Button {
                Layout.alignment: Qt.AlignHCenter
                text: "Default style"
            }

            Qameleon.Button {
                Layout.alignment: Qt.AlignHCenter
                text: "Custom style"

                style {
                    normal {
                        typography.color: Material.color(Material.Red, Material.Shade900)

                        background {
                            color: Material.color(Material.Red)

                            border {
                                color: Material.color(Material.Red, Material.Shade900)
                            }
                        }
                    }

                    hovered {
                        typography.color: Material.color(Material.Red, Material.Shade900)

                        background {
                            color: Material.color(Material.Red)

                            border {
                                color: Material.color(Material.Red, Material.Shade900)
                            }
                        }
                    }

                    pressed {
                        typography.color: Material.color(Material.Red, Material.Shade200)

                        background {
                            color: Material.color(Material.Red, Material.Shade100)

                            border {
                                color: Material.color(Material.Red, Material.Shade200)
                            }
                        }
                    }
                }
            }
        }
    }
}
