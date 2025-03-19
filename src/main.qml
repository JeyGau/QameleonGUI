import "./theme"
import "./views"
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import org.qameleon.controls.theming 1.0
import org.qameleon.hotreload 1.0 as HotReload

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
        onCurrentIndexChanged: {
            if (!viewFactory)
                return ;

            if (!viewFactory.children[currentIndex])
                return ;

            applicationStackView.replace(viewFactory.children[currentIndex].key);
        }

        Repeater {
            model: viewFactory.children

            TabButton {
                text: model.name
            }

        }

    }

    viewFactory: ViewFactory {
    }

}
