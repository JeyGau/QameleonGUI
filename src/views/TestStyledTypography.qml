import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts 1.15
import org.qameleon.controls 1.0 as Qameleon
import org.qameleon.controls.typographies 1.0 as Label
import org.qameleon.controls.typographies.scales 1.0 as Scales

Page {
    title: "Test Styled Typography"

    ScrollView {
        anchors.centerIn: parent

        ColumnLayout {
            anchors.fill: parent

            Label.Headline1 {
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

            Label.Headline1 {
                text: "Headline1"
                color: Material.color(Material.Green)
            }

            Label.Body1 {
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

            Label.Body1 {
                text: "Body1"
                color: Material.color(Material.Red)
            }

        }

    }

}
