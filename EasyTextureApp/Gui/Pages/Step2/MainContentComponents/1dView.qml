// SPDX-FileCopyrightText: 2022 EasyTexture contributors
// SPDX-License-Identifier: BSD-3-Clause
// © 2022 Contributors to the EasyTexture project <https://github.com/EasyScience/EasyTextureApp>

import QtQuick 2.15

import easyApp.Gui.Charts 1.0 as EaCharts

Column {
    property real ratio: 0.6

    EaCharts.Plotly2dHeatmap {
        height: parent.height * ratio
        xAxisTitle: "New x-axis"
        yAxisTitle: "New y-axis"
    }

    EaCharts.Plotly1dLine {
        height: parent.height * (1 - ratio)
        xAxisTitle: "New x-axis"
        yAxisTitle: "New y-axis"
    }

}

