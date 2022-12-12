// SPDX-FileCopyrightText: 2022 EasyTexture contributors
// SPDX-License-Identifier: BSD-3-Clause
// © 2022 Contributors to the EasyTexture project <https://github.com/EasyScience/EasyTextureApp>

import QtQuick 2.15
import QtQuick.Controls 2.15

import easyApp.Gui.Elements 1.0 as EaElements
import easyApp.Gui.Components 1.0 as EaComponents

EaComponents.SideBarColumn {

    // Sidebar Group
    EaElements.GroupBox {
        title: qsTr("gamma-Slice Width")
        collapsed: false

        Loader { source: 'SideBarGroups/SubStep1.qml' }
    }

    // Sidebar Group
    EaElements.GroupBox {
        title: qsTr("dSpacing Patterns")
        collapsible: false


        Loader { source: 'SideBarGroups/SubStep2.qml' }
    }

    // Sidebar Group
    EaElements.GroupBox {
        title: qsTr("Export dSpacing Data")
        collapsible: false
        last: true

        Loader { source: 'SideBarGroups/SubStep3.qml' }
    }

}

