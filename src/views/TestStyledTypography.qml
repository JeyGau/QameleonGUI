import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts
import org.qameleon.controls.typographies as Typo

Page {
    title: "Test Styled Typography"

    ScrollView {
        anchors.centerIn: parent

        ColumnLayout {
            anchors.fill: parent

            Typo.Headline1 {
                text: "Headline1"

                style {
                    background {
                        color: Material.color(Material.Green, Material.Shade200)
                        radius: 5

                        border {
                            color: Material.color(Material.Green)
                        }
                    }
                }
            }

            Typo.Headline1 {
                text: "Headline1"
                color: Material.color(Material.Green)
            }

            Typo.Body1 {
                text: "Body1"

                style {
                    background {
                        color: Material.color(Material.Red, Material.Shade200)
                        radius: 5

                        border {
                            color: Material.color(Material.Red)
                        }
                    }
                }
            }

            Typo.Body1 {
                text: "Body1"
                color: Material.color(Material.Red)
            }
        }
    }
}
