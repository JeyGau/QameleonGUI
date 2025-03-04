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
        name: ViewFactory.Views.TestTypographies

        TestTypographies {}
    }

    Qameleon.ViewFactory.View {
        name: ViewFactory.Views.TestStyledTypography

        TestStyledTypography {}
    }

    Qameleon.ViewFactory.View {
        name: ViewFactory.Views.TestButton

        TestButton {}
    }

    Qameleon.ViewFactory.View {
        name: ViewFactory.Views.TestLabel
        
        TestLabel {}
    }
    
}

