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
    rows: 2
    columnSpacing: EaStyle.Sizes.fontPixelSize
     rowSpacing: 30

    Row{

        Grid {
            readonly property int commonSpacing: EaStyle.Sizes.fontPixelSize * 1.5


            columns: 1

            columnSpacing: commonSpacing

            EaElements.Label {
                text: qsTr("Save Set of d-Spacing Patterns")
            }
            EaElements.Label {
                text: "in MAUD Format."
            }
        }
    }


    Row {

        EaElements.SideBarButton {
            width: EaStyle.Sizes.sideBarContentWidth
            text: "Save"
            onClicked: {}
        }
    }

    // Logic

    function inputFieldWidth() {
        return (EaStyle.Sizes.sideBarContentWidth - columnSpacing * (columns - 1)) / columns
    }

}
