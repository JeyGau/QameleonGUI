import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import qameleon.controls 1.0 as Qameleon
import qameleon.controls.theming 1.0 as Qameleon
import qameleon.hotreload 1.0 as Qameleon
import "./views"
import "./theme"

ApplicationWindow {
    visible: true
    width: 1280
    height: 720

    Theme {
        id: mainTheme
    }

    Component.onCompleted: {
        Qameleon.ThemeManager.theme = mainTheme;
    }

    Qameleon.ApplicationStackView {
        anchors.fill: parent
        viewFactory: ViewFactory {}
    }

    footer: Qameleon.ActionsButtonBox {
        padding: 16

        ActionGroup {

            Qameleon.Action {
                text: "Previous"
                role: Qameleon.ActionsButtonBox.Role.Secondary
            }

            Qameleon.Action {
                text: "Next"
                role: Qameleon.ActionsButtonBox.Role.Primary
            }

        }

    }
    
}