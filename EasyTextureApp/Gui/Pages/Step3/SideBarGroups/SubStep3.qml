// SPDX-FileCopyrightText: 2022 EasyTexture contributors
// SPDX-License-Identifier: BSD-3-Clause
// © 2022 Contributors to the EasyTexture project <https://github.com/EasyScience/EasyTextureApp>

import QtQuick 2.15
import QtQuick.Controls 2.15

import easyApp.Gui.Style 1.0 as EaStyle
import easyApp.Gui.Elements 1.0 as EaElements
import easyApp.Gui.Logic 1.0 as EaLogic

import Gui.Globals 1.0 as ExGlobals


Row {
    id: slideRow

    width: EaStyle.Sizes.sideBarContentWidth
    height: 50 //parent.height

    spacing: 10



    // Slider
    EaElements.Slider {
        id: slider
        width: EaStyle.Sizes.sideBarContentWidth
               - EaStyle.Sizes.fontPixelSize * 0.5
        height: parent.height
        from: 45
        to: 135
        value: 90
        onPressedChanged: {

        }
    }


}


