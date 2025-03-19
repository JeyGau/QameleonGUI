import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import org.qameleon.controls.theming 1.0
import org.qameleon.controls.typographies 1.0 as Label

Page {
    title: "Test Typographies"

    ScrollView {
        anchors.centerIn: parent

        ColumnLayout {
            anchors.fill: parent

            RowLayout {
                Layout.alignment: Qt.AlignHCenter

                Label.Body1 {
                    text: "Select Font Family"
                }

                ComboBox {
                    Layout.alignment: Qt.AlignHCenter
                    model: Qt.fontFamilies()
                    onCurrentIndexChanged: {
                        ThemeManager.theme.fontFamily = model[currentIndex];
                    }
                }

            }

            Label.Headline1 {
                text: "Headline1"
            }

            Label.Headline2 {
                text: "Headline2"
            }

            Label.Headline3 {
                text: "Headline3"
            }

            Label.Headline4 {
                text: "Headline4"
            }

            Label.Headline5 {
                text: "Headline5"
            }

            Label.Headline6 {
                text: "Headline6"
            }

            Label.Subtitle1 {
                text: "Subtitle1"
            }

            Label.Subtitle2 {
                text: "Subtitle2"
            }

            Label.Body1 {
                text: "Body1"
            }

            Label.Body2 {
                text: "Body2"
            }

            Label.Caption {
                text: "Caption"
            }

            Label.Overline {
                text: "Overline"
            }

        }

    }

}
