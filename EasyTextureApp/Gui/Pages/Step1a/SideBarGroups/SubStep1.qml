// SPDX-FileCopyrightText: 2022 EasyTexture contributors
// SPDX-License-Identifier: BSD-3-Clause
// © 2022 Contributors to the EasyTexture project <https://github.com/EasyScience/EasyTextureApp>

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3 as QtQuickDialogs1

import easyApp.Gui.Style 1.0 as EaStyle
import easyApp.Gui.Elements 1.0 as EaElements
import easyApp.Gui.Logic 1.0 as EaLogic

import Gui.Globals 1.0 as ExGlobals


Grid {
    //columns: 2
    rows: 2
    columnSpacing: EaStyle.Sizes.fontPixelSize
    rowSpacing: EaStyle.Sizes.fontPixelSize * 0.5

    // Location
    Row {
        spacing: EaStyle.Sizes.fontPixelSize * 0.5

        EaElements.Label {
            id: locationLabel

            enabled: false
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("File")
        }

        EaElements.TextField {
            id: reportLocationField

            width: EaStyle.Sizes.sideBarContentWidth - locationLabel.width - EaStyle.Sizes.fontPixelSize * 0.5
            rightPadding: chooseButton.width
            horizontalAlignment: TextInput.AlignLeft

            placeholderText: qsTr("Enter Vanadium file here")
            text: vanadiumFileDialog.fileUrl

            EaElements.ToolButton {
                id: chooseButton

                anchors.right: parent.right

                showBackground: false
                fontIcon: "folder-open"
                ToolTip.text: qsTr("Choose Vanadium file here")

                onClicked: vanadiumFileDialog.open()
            }
        }
    }



    // Vanadium File dialog
    QtQuickDialogs1.FileDialog {
        id: vanadiumFileDialog

        title: qsTr("Choose File as Vanadium Standard")
        selectFolder: false
        selectMultiple: false

        folder: ExGlobals.Constants.proxy.project.currentProjectPath
    }

    // Logic

    function inputFieldWidth() {
        return (EaStyle.Sizes.sideBarContentWidth - columnSpacing * (columns - 1)) / columns
    }

}
