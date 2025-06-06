import QtQuick.Controls
import QtQuick.Layouts
import org.qameleon.controls.theming
import org.qameleon.controls.typographies as Typo

Page {
    title: "Test Typographies"

    ScrollView {
        anchors.centerIn: parent

        ColumnLayout {
            anchors.fill: parent

            RowLayout {
                Layout.alignment: Qt.AlignHCenter

                Typo.Body1 {
                    text: "Select Font Family"
                }

                ComboBox {
                    Layout.alignment: Qt.AlignHCenter
                    model: Qt.fontFamilies()
                    displayText: ThemeManager.theme.fontFamily
                    currentIndex: Qt.fontFamilies().indexOf(ThemeManager.theme.fontFamily)
                    onCurrentIndexChanged: {
                        ThemeManager.theme.fontFamily = model[currentIndex];
                    }
                }
            }

            Typo.Headline1 {
                text: "Headline1"
            }

            Typo.Headline2 {
                text: "Headline2"
            }

            Typo.Headline3 {
                text: "Headline3"
            }

            Typo.Headline4 {
                text: "Headline4"
            }

            Typo.Headline5 {
                text: "Headline5"
            }

            Typo.Headline6 {
                text: "Headline6"
            }

            Typo.Subtitle1 {
                text: "Subtitle1"
            }

            Typo.Subtitle2 {
                text: "Subtitle2"
            }

            Typo.Body1 {
                text: "Body1"
            }

            Typo.Body2 {
                text: "Body2"
            }

            Typo.Caption {
                text: "Caption"
            }

            Typo.Overline {
                text: "Overline"
            }
        }
    }
}
