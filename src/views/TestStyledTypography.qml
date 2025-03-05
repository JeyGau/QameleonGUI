import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts 1.15
import qameleon.controls 1.0 as Qameleon
import qameleon.controls.typographies 1.0 as Label
import qameleon.controls.typographies.scales 1.0 as Scales

Qameleon.Page {
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
            }

            Label.Body1 {
                text: "Body1"
            }

            Label.Body1 {
                text: "Body1"
                color: Material.color(Material.Green)
            }

        }

    }

}
