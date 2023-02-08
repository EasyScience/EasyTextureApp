// SPDX-FileCopyrightText: 2022 EasyTexture contributors
// SPDX-License-Identifier: BSD-3-Clause
// © 2022 Contributors to the EasyTexture project <https://github.com/EasyScience/EasyTextureApp>

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3 as QtQuickDialogs1
import Qt.labs.settings 1.0
import QtWebEngine 1.10

import easyApp.Gui.Style 1.0 as EaStyle
import easyApp.Gui.Elements 1.0 as EaElements
import easyApp.Gui.Components 1.0 as EaComponents
import easyApp.Gui.Logic 1.0 as EaLogic

import Gui.Globals 1.0 as ExGlobals
//import Gui.Pages.LiveView 1.0 as ExLiveViewPage

EaComponents.SideBarColumn {

    // create live view main content in sync with "Explore Page"
    // implementation later, after "Explore" is finished



    EaElements.GroupBox {
        title: qsTr("Connect to Measurement Data")
        collapsible: false
        last: true

        // Name-Format
        Row {
            spacing: EaStyle.Sizes.fontPixelSize * 1.5

            Row {
                spacing: EaStyle.Sizes.fontPixelSize * 0.5

                EaElements.Label {
                    enabled: false
                    width: locationLabel.width
                    anchors.verticalCenter: parent.verticalCenter
                    horizontalAlignment: TextInput.AlignRight
                    text: qsTr("Name")
                }

                EaElements.TextField {
                    id: reportNameField

                    width: EaStyle.Sizes.sideBarContentWidth - locationLabel.width - formatLabel.width - reportFormatField.width - EaStyle.Sizes.fontPixelSize * 2.5
                    horizontalAlignment: TextInput.AlignLeft
                    placeholderText: qsTr("Enter report file name here")

                    Component.onCompleted: text = 'measurementFileFromInstrument'
                }
            }

            // todo: required?
            Row {
                spacing: EaStyle.Sizes.fontPixelSize * 0.5

                EaElements.Label {
                    id: formatLabel
                    enabled: false
                    anchors.verticalCenter: parent.verticalCenter
                    text: qsTr("Format")
                }

                EaElements.ComboBox {
                    id: reportFormatField

                    topInset: 0
                    bottomInset: 0
                    width: EaStyle.Sizes.fontPixelSize * 10

                    textRole: "text"
                    valueRole: "value"
                    model: [
                        { value: 'html', text: qsTr("Interactive HTML") },
                        { value: 'pdf', text: qsTr("Static PDF") }                    ]
                }
            }

        }

        // Location
        Row {
            spacing: EaStyle.Sizes.fontPixelSize * 0.5

            EaElements.Label {
                id: locationLabel

                enabled: false
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr("Location")
            }

            EaElements.TextField {
                id: reportLocationField

                width: EaStyle.Sizes.sideBarContentWidth - locationLabel.width - EaStyle.Sizes.fontPixelSize * 0.5
                rightPadding: chooseButton.width
                horizontalAlignment: TextInput.AlignLeft

                placeholderText: qsTr("Enter report location here")
                text: ExGlobals.Constants.proxy.project.projectCreated ?
                          EaLogic.Utils.urlToLocalFile(reportParentDirDialog.folder + '/' + reportNameField.text + '.' + reportFormatField.currentValue) :
                          ''

                EaElements.ToolButton {
                    id: chooseButton

                    anchors.right: parent.right

                    showBackground: false
                    fontIcon: "folder-open"
                    ToolTip.text: qsTr("Choose report parent directory")

                    onClicked: reportParentDirDialog.open()
                }
            }
        }

        // Export button
        EaElements.SideBarButton {
            wide: true
            fontIcon: "network-wired" // "handshake"  "network-wired"  "satellite-dish"   "lock"/"unlock"
            text: qsTr("Connect")

            onClicked: {
                if (reportFormatField.currentValue === 'html') {
                    ExGlobals.Constants.proxy.project.saveReport(reportLocationField.text)
                } else if (reportFormatField.currentValue === 'pdf') {
                    ExGlobals.Variables.reportWebView.printToPdf(reportLocationField.text)
                }
            }

            Component.onCompleted: ExGlobals.Variables.exportReportButton = this
        }

        Component.onCompleted: ExGlobals.Variables.exportReportGroup = this
    }


    // Sidebar Group
    EaElements.GroupBox {
        title: qsTr("Statistics")
        collapsed: false



        Grid {
            columns: 2
            columnSpacing: EaStyle.Sizes.fontPixelSize


            Column {
                //Grid
                Grid {
                    readonly property int commonSpacing: EaStyle.Sizes.fontPixelSize * 1.5

                    columns: 2
                    rowSpacing: 0
                    columnSpacing: commonSpacing


                    EaElements.Label {
                        text: qsTr("Current File Size:")
                    }
                    EaElements.Label {
                        text: "xxx"
                    }

                    EaElements.Label {
                        text: qsTr("Current Number of Events:")
                    }
                    EaElements.Label {
                        text: "xxx"
                    }


                    EaElements.Label {
                        text: qsTr("Average Count per Detector Voxel:")
                    }
                    EaElements.Label {
                        text: "xxx"
                    }

                } // Grid


            }


        }


    }



    EaElements.GroupBox {
        title: qsTr("Explore Detector 3D Preview")
        collapsible: false
        last: true


        // Export button
        EaElements.SideBarButton {
            wide: true
            fontIcon: "" //"download"
            text: qsTr("Select Detector 3D Preview Tab")

            onClicked: {} // switch to detector 3D preview


            Component.onCompleted: ExGlobals.Variables.exportReportButton = this
        }




    }


    EaElements.GroupBox {
        title: qsTr("Explore 2-theta Rings Preview")
        collapsible: false
        last: true


        Grid{
            rows: 2
            rowSpacing: 30

            Row {

                Grid {
                    readonly property int commonSpacing: EaStyle.Sizes.fontPixelSize * 1.5


                    columns: 2
                    rowSpacing: 10
                    //columnSpacing: commonSpacing

                    EaElements.Label {
                        //font.bold: true
                        text: qsTr("2-theta = ")
                    }
                    EaElements.Label {
                        text: slider.value.toFixed(0) // TODO: putthis info on the TAB
                    }
                }

            }

            Row {
                id: slideRow

                width: EaStyle.Sizes.sideBarContentWidth
                height: 50 //parent.height

                spacing: 10


                EaElements.Label {
                    id: sliderFromLabel
                    text: slider.from.toFixed(0)
                }

                // Slider
                EaElements.Slider {
                    id: slider
                    width: EaStyle.Sizes.sideBarContentWidth
                           - EaStyle.Sizes.fontPixelSize * 0.5 - 100
                    height: parent.height
                    from: 45
                    to: 135
                    value: 90
                    // TODO: tool tip: make it an int (not double)
                    onPressedChanged: {

                    }
                }

                EaElements.Label {
                    id: sliderToLabel
                    text: slider.to.toFixed(0)
                }

            }

        }
    }



    // Directory dialog
    QtQuickDialogs1.FileDialog {
        id: reportParentDirDialog

        title: qsTr("Choose report parent directory")
        selectFolder: true
        selectMultiple: false

        ///folder: ExGlobals.Constants.proxy.project.currentProjectPath
    }

}
