// SPDX-FileCopyrightText: 2022 EasyExample contributors
// SPDX-License-Identifier: BSD-3-Clause
// © 2022 Contributors to the EasyExample project <https://github.com/EasyScience/EasyTextureApp>

import QtQuick
import QtQuick.Controls

import EasyApp.Gui.Charts as EaCharts

import Gui.Globals as Globals


EaCharts.Plotly1dMeasVsCalc {

    useWebGL: Globals.Proxies.main.plotting.useWebGL1d

    xAxisTitle: "x"
    yAxisTitle: "y"

    xData: Globals.Proxies.main.rawData.xData
    calculatedYData: Globals.Proxies.main.corrections.yData

    Component.onCompleted: Globals.Refs.app.correctionsPage.plotView = this

}

