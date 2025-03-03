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

    mainView: ViewFactory.Views.TestButton

    Qameleon.ViewFactory.View {
        enum_: ViewFactory.Views.TestTypographies
        component_: TestTypographies {}
    }
    Qameleon.ViewFactory.View {
        enum_: ViewFactory.Views.TestStyledTypography
        component_: TestStyledTypography {}
    }
    Qameleon.ViewFactory.View {
        enum_: ViewFactory.Views.TestButton
        component_: TestButton {}
    }
    Qameleon.ViewFactory.View {
        enum_: ViewFactory.Views.TestLabel
        component_: TestLabel {}
    }
    
}

