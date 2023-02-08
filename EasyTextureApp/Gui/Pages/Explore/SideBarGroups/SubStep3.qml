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
    columns: 4
    columnSpacing: EaStyle.Sizes.fontPixelSize


    // EasyApp RadioButton not working
    RadioButton {
        topPadding: 0
        checked: true
        text: "1°"
        ToolTip.text: qsTr("Select 1° slice")
    }

    // EasyApp RadioButton not working
    RadioButton {
        topPadding: 0
        text: "2°"
        ToolTip.text: qsTr("Select 2° slice")
    }

    // EasyApp RadioButton not working
    RadioButton {
        topPadding: 0
        text: "5°"
        ToolTip.text: qsTr("Select 5° slice")
    }

    // EasyApp RadioButton not working
    RadioButton {
        topPadding: 0
        text: "10°"
        ToolTip.text: qsTr("Select 10° slice")
    }

}
