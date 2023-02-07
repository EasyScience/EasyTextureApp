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

    columns: 2
    rowSpacing: 0
    columnSpacing: commonSpacing

    EaElements.Label {
        text: "..."
    }
    EaElements.Label {
        text: "..."
    }

    EaElements.Label {
        text: "..."
    }
    EaElements.Label {
        text: "..."
    }


    EaElements.Label {
        text: "..."
    }
    EaElements.Label {
        text: "..."
    }

}
