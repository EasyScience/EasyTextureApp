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
    rowSpacing: EaStyle.Sizes.fontPixelSize

    // EasyApp RadioButton not working
    RadioButton {
        topPadding: 0
        checked: true
        text: qsTr("Apply data correction")
        ToolTip.text: qsTr("Checking this box will apply data correction to the measurement data")
    }

    // EasyApp RadioButton not working
    RadioButton {
        topPadding: 0
        text: qsTr("Use raw data without correction")
        ToolTip.text: qsTr("Checking this box will continue without applying data correction to the measurement data")
    }

}
