// SPDX-FileCopyrightText: 2023 EasyExample contributors
// SPDX-License-Identifier: BSD-3-Clause
// © 2023 Contributors to the EasyExample project <https://github.com/EasyScience/EasyTextureApp>

import QtQuick

import EasyApp.Gui.Elements as EaElements
import EasyApp.Gui.Components as EaComponents

import Gui.Globals as Globals


EaComponents.SideBarColumn {

    // from EasyAppExample:
    EaElements.GroupBox {
        title: qsTr("Measurement File")
        collapsible: false
        last: !Globals.Proxies.main.corrections.isCreated

        Loader { source: 'SideBarBasic/ModelsExplorerGroup.qml' }
    }

    EaElements.GroupBox {
        title: qsTr("Selected model parameters")
        visible: Globals.Proxies.main.corrections.isCreated
        last: true

        Loader { source: 'SideBarBasic/ModelParametersGroup.qml' }
    }
}
