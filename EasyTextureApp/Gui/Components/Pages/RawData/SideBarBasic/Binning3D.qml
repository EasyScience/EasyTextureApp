// SPDX-FileCopyrightText: 2022 EasyTexture contributors
// SPDX-License-Identifier: BSD-3-Clause
// © 2022 Contributors to the EasyTexture project <https://github.com/EasyScience/EasyTextureApp>

import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

import EasyApp.Gui.Style as EaStyle
import EasyApp.Gui.Elements as EaElements

import Gui.Globals as Globals


Grid {
    rows: 2
    columnSpacing: EaStyle.Sizes.fontPixelSize
    rowSpacing: EaStyle.Sizes.fontPixelSize * 0.5

    // Location
    Row {
        Grid {
            columns: 2
            columnSpacing: EaStyle.Sizes.fontPixelSize


            EaElements.Label {
                enabled: true
                text: qsTr("2θ bin size, deg")
            }

            ComboBox {
                //values for two_theta_bin_width_3D
                currentIndex: 2
                model: ["0.1°", "0.25°", "0.5°", "0.75°", "1°", "2°", "5°", "10°"]
            }
        }
    }

    Row {
        Grid {
            columns: 2
            columnSpacing: 23//EaStyle.Sizes.fontPixelSize


            EaElements.Label {
                enabled: true
                text: qsTr("γ bin size, deg")
            }

            ComboBox {
                //values for gamma_bin_width_3D
                model: ["1°", "2°", "5°", "10°"]
                onClipChanged: {console.log('HI3')}
            }
        }
    }


    // Select File dialog
    FileDialog {
        id: measurementFileDialog
        title: qsTr("Choose Measurement File")
    }


}
