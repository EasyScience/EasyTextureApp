// SPDX-FileCopyrightText: 2022 EasyTexture contributors
// SPDX-License-Identifier: BSD-3-Clause
// © 2022 Contributors to the EasyTexture project <https://github.com/EasyScience/EasyTextureApp>

import QtQuick 2.15
import QtQuick.Controls 2.15

import easyApp.Gui.Style 1.0 as EaStyle
import easyApp.Gui.Elements 1.0 as EaElements
import easyApp.Gui.Logic 1.0 as EaLogic

import Gui.Globals 1.0 as ExGlobals


Grid {
    columns: 2
    columnSpacing: EaStyle.Sizes.fontPixelSize

    Column {
        width: 1/3 * EaStyle.Sizes.sideBarContentWidth

        // RadioButton not working
        EaElements.CheckBox {
            topPadding: 0
            checked: {}
            text: qsTr("1°")
            ToolTip.text: qsTr("") // qsTr("Select 1° slice")
            onToggled: {}
        }

        // RadioButton not working
        EaElements.CheckBox {
            topPadding: 0
            checked: {}
            text: qsTr("2°")
            ToolTip.text: qsTr("") // qsTr("Select 2° slice")
            onToggled: {}
        }

        // RadioButton not working
        EaElements.CheckBox {
            topPadding: 0
            checked: {}
            text: qsTr("5°")
            ToolTip.text: qsTr("") // qsTr("Select 5° slice")
            onToggled: {}
        }

        // RadioButton not working
        EaElements.CheckBox {
            topPadding: 0
            checked: {}
            text: qsTr("10°")
            ToolTip.text: qsTr("") // qsTr("Select 10° slice")
            onToggled: {}
        }

    }



    Column {
        //Grid
        Grid {
            readonly property int commonSpacing: EaStyle.Sizes.fontPixelSize * 1.5

            columns: 2
            rowSpacing: 0
            columnSpacing: commonSpacing

            EaElements.Label {
                text: qsTr("Resulting Slices:")
                enabled: false
            }
            EaElements.Label {
                text: " "
            }

            EaElements.Label {
                text: " "
            }
            EaElements.Label {
                text: " "
            }

            EaElements.Label {
                text: qsTr("Number of Slices (= Number of Patterns):")
            }
            EaElements.Label {
                text: "xxx"
            }

            EaElements.Label {
                text: qsTr("Intensity Width (in gamma-Degree):")
            }
            EaElements.Label {
                text: "xxx"
            }


            EaElements.Label {
                text: qsTr("...:")
            }
            EaElements.Label {
                text: "xxx"
            }

        } // Grid


    }



    // Logic

    function inputFieldWidth() {
        return (EaStyle.Sizes.sideBarContentWidth - columnSpacing * (columns - 1)) / columns
    }

}
