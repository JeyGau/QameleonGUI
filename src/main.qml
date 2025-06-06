import "./theme"
import "./views"
import QtQuick
import QtQuick.Controls
import org.qameleon.controls.theming
import org.qameleon.hotreload as HotReload

HotReload.ApplicationWindow {
    id: window

    visible: true
    width: 1280
    height: 720
    Component.onCompleted: {
        ThemeManager.theme = mainTheme;
    }

    Theme {
        id: mainTheme
    }

    header: TabBar {
        id: tabs
        onCurrentIndexChanged: {
            if (!window.viewFactory)
                return;

            if (!window.viewFactory.children[tabs.currentIndex])
                return;

            window.applicationStackView.replace(window.viewFactory.children[tabs.currentIndex].key);
        }

        Repeater {
            model: window.viewFactory.children

            delegate: TabButton {
                text: model.name
            }
        }
    }

    viewFactory: ViewFactory {}
}
