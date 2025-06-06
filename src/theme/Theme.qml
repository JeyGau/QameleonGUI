import QtQuick.Controls.Material
import org.qameleon.controls.theming

AbstractTheme {
    id: theme

    primaryColor: Material.color(Material.Green)
    secondaryColor: Material.color(Material.Green, Material.Shade200)
    backgroundColor: Material.color(Material.Green)
    disabledBackgroundColor: Material.color(Material.Grey)
    textColor: Material.color(Material.Green, Material.Shade900)
    disabledTextColor: Material.color(Material.Grey, Material.Shade600)

    disabled: AbstractTheme.ColorSet {
        backgroundColor: theme.disabledBackgroundColor
        textColor: theme.disabledTextColor
        borderColor: theme.disabledBackgroundColor
    }

    pressed: AbstractTheme.ColorSet {
        backgroundColor: Material.color(Material.Green, Material.Shade200)
        textColor: Material.color(Material.Green, Material.Shade100)
        borderColor: Material.color(Material.Green, Material.Shade200)
    }
}
