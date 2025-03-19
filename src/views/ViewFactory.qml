import QtQuick 2.15
import org.qameleon.hotreload 1.0 as Qameleon

Qameleon.ViewFactory {
    id: root

    enum Views {
        TestTypographies,
        TestStyledTypography,
        TestButton,
        TestLabel
    }

    Qameleon.ViewFactory.View {
        key: ViewFactory.Views.TestTypographies
        name: "Test Typographies"

        TestTypographies {
        }

    }

    Qameleon.ViewFactory.View {
        key: ViewFactory.Views.TestStyledTypography
        name: "Test Styled Typography"

        TestStyledTypography {
        }

    }

    Qameleon.ViewFactory.View {
        key: ViewFactory.Views.TestButton
        name: "Test Button"

        TestButton {
        }

    }

    Qameleon.ViewFactory.View {
        key: ViewFactory.Views.TestLabel
        name: "Test Label"

        TestLabel {
        }

    }

}
