import "./theme"
import "./views"
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import qameleon.controls 1.0 as Qameleon
import qameleon.controls.theming 1.0 as Qameleon
import qameleon.hotreload 1.0 as HotReload

HotReload.ApplicationWindow {
    id: window

    visible: true
    width: 1280
    height: 720
    Component.onCompleted: {
        Qameleon.ThemeManager.theme = mainTheme;
    }

    Theme {
        id: mainTheme
    }

    viewFactory: ViewFactory {
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
