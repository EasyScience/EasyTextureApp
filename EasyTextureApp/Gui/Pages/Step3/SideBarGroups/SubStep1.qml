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
    readonly property int commonSpacing: EaStyle.Sizes.fontPixelSize * 1.5


    rows: 2
    rowSpacing: 30
    columnSpacing: commonSpacing


    Row{

        Grid {
            readonly property int commonSpacing: EaStyle.Sizes.fontPixelSize * 1.5


            columns: 2
            rowSpacing: 10
            columnSpacing: commonSpacing

            EaElements.Label {
                //font.bold: true
                text: qsTr("Selected gamma-Slice Width:")
            }
            EaElements.Label {
                text: "xxx"
            }
        }
    }





    Row {

        EaElements.SideBarButton {
            width: EaStyle.Sizes.sideBarContentWidth
            text: "Step Back to Change gamma-Slice Width"
            onClicked: ExGlobals.Variables.step2TabButton.toggle()
        }
    }



}

