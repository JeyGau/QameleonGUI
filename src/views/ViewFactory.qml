import QtQuick 2.15
import qameleon.hotreload 1.0 as Qameleon

Qameleon.ViewFactory {
    id: root

    enum Views {
        TestTypographies,
        TestStyledTypography,
        TestButton,
        TestLabel
    }

    mainView: Enums.Views.TestButton

    Qameleon.ViewFactory.View {
        name: Enums.Views.TestTypographies

        TestTypographies {
        }

    }

    Qameleon.ViewFactory.View {
        name: Enums.Views.TestStyledTypography

        TestStyledTypography {
        }

    }

    Qameleon.ViewFactory.View {
        name: Enums.Views.TestButton

        TestButton {
        }

    }

    Qameleon.ViewFactory.View {
        name: Enums.Views.TestLabel

        TestLabel {
        }

    }

}
