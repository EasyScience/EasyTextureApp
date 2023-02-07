// SPDX-FileCopyrightText: 2022 EasyTexture contributors
// SPDX-License-Identifier: BSD-3-Clause
// © 2022 Contributors to the EasyTexture project <https://github.com/EasyScience/EasyTextureApp>

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3 as Dialogs1
import QtQuick.XmlListModel 2.15

import easyApp.Gui.Style 1.0 as EaStyle
import easyApp.Gui.Globals 1.0 as EaGlobals
import easyApp.Gui.Elements 1.0 as EaElements
import easyApp.Gui.Components 1.0 as EaComponents

import Gui.Globals 1.0 as ExGlobals
import Gui.Components 1.0 as ExComponents
import Gui.Pages.Home 1.0 as ExHomePage
import Gui.Pages.Project 1.0 as ExProjectPage
import Gui.Pages.RawData 1.0 as ExRawDataPage
import Gui.Pages.Corrections 1.0 as ExCorrectionsPage
import Gui.Pages.Step2 1.0 as ExStep2
import Gui.Pages.Step3 1.0 as ExStep3

EaComponents.ApplicationWindow {

    title: ' ' //`${ExGlobals.Constants.appName} ${ExGlobals.Constants.appVersion}`

    ///////////////////
    // APPLICATION BAR
    ///////////////////

    // Left group of application bar tool buttons
    appBarLeftButtons: [

        EaElements.ToolButton {
            enabled: false
            highlighted: true
            fontIcon: "save"
            ToolTip.text: qsTr("Save current state of the project")
            onClicked:  ExGlobals.Constants.proxy.project.saveProject()
        },

        EaElements.ToolButton {
            enabled: false
            fontIcon: "undo"
        },

        EaElements.ToolButton {
            enabled: false
            fontIcon: "redo"
        },

        EaElements.ToolButton {
            enabled: false
            fontIcon: "backspace"
            ToolTip.text: qsTr("Reset to initial state without project, phases and data")
            onClicked: resetStateDialog.open()
            Component.onCompleted: ExGlobals.Variables.resetStateButton = this
        }

    ]

    // Right group of application bar tool buttons
    appBarRightButtons: [

        EaElements.ToolButton {
            fontIcon: "cog"
            ToolTip.text: qsTr("Application preferences")
            onClicked: EaGlobals.Variables.showAppPreferencesDialog = true
            Component.onCompleted: ExGlobals.Variables.preferencesButton = this
        },

        EaElements.ToolButton {
            enabled: false
            fontIcon: "question-circle"
            ToolTip.text: qsTr("Get online help")
            onClicked: Qt.openUrlExternally(ExGlobals.Constants.appUrl)
        },

        EaElements.ToolButton {
            fontIcon: "bug"
            ToolTip.text: qsTr("Report a bug or issue")
            onClicked: Qt.openUrlExternally(ExGlobals.Constants.appIssuesUrl)
        }

    ]

    // Central group of application bar tab buttons (workflow tabs)
    // Tab buttons for the pages described below
    appBarCentralTabs.contentData: [

        // Home tab
        EaElements.AppBarTabButton {
            enabled: ExGlobals.Variables.homePageEnabled
            fontIcon: "home"
            text: qsTr("Home")
            //ToolTip.text: qsTr("Home page")
            Component.onCompleted: ExGlobals.Variables.homeTabButton = this
        },

        // Project tab
        EaElements.AppBarTabButton {
            enabled: ExGlobals.Variables.projectPageEnabled
            fontIcon: "archive"
            text: qsTr("Project")
            //ToolTip.text: qsTr("Project description page")
            Component.onCompleted: ExGlobals.Variables.projectTabButton = this
        },

        // Step 1 tab
        EaElements.AppBarTabButton {
            enabled: ExGlobals.Variables.step1PageEnabled
            fontIcon: "database"
            text: qsTr("Raw Data")
            //ToolTip.text: qsTr("Workflow step 1 description page")
            Component.onCompleted: ExGlobals.Variables.step1TabButton = this
        },

        // Step 1a tab
        EaElements.AppBarTabButton {
            enabled: ExGlobals.Variables.step1PageEnabled
            fontIcon: "hammer"
            text: qsTr("Corrections")
            //ToolTip.text: qsTr("Workflow step 1a description page")
            Component.onCompleted: ExGlobals.Variables.stepa1TabButton = this
        },


        // Step 2 tab
        EaElements.AppBarTabButton {
            enabled: ExGlobals.Variables.step2PageEnabled
            fontIcon: "microscope"
            text: qsTr("Explore")
            //ToolTip.text: qsTr("Workflow step 2 description page")
            Component.onCompleted: ExGlobals.Variables.step2TabButton = this
        },

        // Step 3 tab
        EaElements.AppBarTabButton {
            enabled: ExGlobals.Variables.step3PageEnabled
            fontIcon: "calculator"
            text: qsTr("Results")
            //ToolTip.text: qsTr("Workflow step 3 description page")
            Component.onCompleted: ExGlobals.Variables.step3TabButton = this
        }

    ]

    /////////////////////////
    // MAIN CONTENT + SIDEBAR
    /////////////////////////

    // Pages for the tab buttons described above
    contentArea: [

        // Home (app page)
        ExHomePage.MainContent {},

        // Project (app page)
        EaComponents.ContentPage {
            defaultInfo: ExGlobals.Constants.proxy.project.projectCreated ? "" : qsTr("No Project Created/Opened")

            mainContent: EaComponents.MainContent {
                tabs: [
                    EaElements.TabButton { text: qsTr("Description") }
                ]

                items: [
                    ExProjectPage.MainContentDescription {}
                ]
            }

            sideBar: EaComponents.SideBar {
                tabs: [
                    EaElements.TabButton { text: qsTr("Basic controls") },
                    EaElements.TabButton { text: qsTr("Advanced controls") }
                ]

                items: [
                    ExProjectPage.SideBarBasic {},
                    ExProjectPage.SideBarAdvanced {}
                ]
            }
        },

        // Workflow step: raw data
        EaComponents.ContentPage {
            mainContent: EaComponents.MainContent {
                tabs: [
                    EaElements.TabButton { text: qsTr("Measurement Preview") }
                ]

                items: [
                    ExRawDataPage.MainContentPlotView {}
                ]
            }

            sideBar: EaComponents.SideBar {
                tabs: [
                    EaElements.TabButton { text: qsTr("Basic controls") },
                    EaElements.TabButton { text: qsTr("Advanced controls") }
                ]

                items: [
                    ExRawDataPage.SideBarBasic {},
                    ExRawDataPage.SideBarAdvanced {}
                ]
            }
        },


        // Workflow step: corrections
        EaComponents.ContentPage {
            mainContent: EaComponents.MainContent {
                tabs: [
                    EaElements.TabButton { text: qsTr("xxx") }
                ]

                items: [
                    ExCorrectionsPage.MainContentPlotView {}
                ]
            }

            sideBar: EaComponents.SideBar {
                tabs: [
                    EaElements.TabButton { text: qsTr("Basic controls") }
                ]

                items: [
                    ExCorrectionsPage.SideBarBasic {}
                ]
            }
        },

        // Workflow step 2 (app page)
        EaComponents.ContentPage {
            mainContent: EaComponents.MainContent {
                tabs: [
                    EaElements.TabButton { text: qsTr("2-theta Rings") },
                    EaElements.TabButton { text: qsTr("2D View") },
                    EaElements.TabButton { text: qsTr("3D View") }
                ]

                items: [
                    ExStep2.MainContentPlotView {},
                    ExStep2.MainContentPlotView2 {},
                    ExStep2.MainContentPlotView3 {}
                ]
            }

            sideBar: EaComponents.SideBar {
                tabs: [
                    EaElements.TabButton { text: qsTr("Basic controls") },
                    EaElements.TabButton { text: qsTr("Advanced controls") }
                ]

                items: [
                    ExStep2.SideBarBasic {},
                    ExStep2.SideBarAdvanced {}
                ]
            }
        },

        // Workflow step 3 (app page)
        EaComponents.ContentPage {
            ///defaultInfo: ExGlobals.Constants.proxy.phase.samplesPresent ? "" : qsTr("No Samples Added/Loaded")

            mainContent: EaComponents.MainContent {
                tabs: [
                    EaElements.TabButton { text: qsTr("d-Spacing Patterns") },
                    EaElements.TabButton { text: qsTr("2-theta Patterns") }
                ]

                items: [
                    ExStep3.MainContentPlotView {},
                    ExStep3.MainContentPlotView2 {}
                ]
            }

            sideBar: EaComponents.SideBar {
                tabs: [
                    EaElements.TabButton { text: qsTr("Basic controls") },
                    EaElements.TabButton { text: qsTr("Advanced controls") }
                ]

                items: [
                    ExStep3.SideBarBasic {},
                    ExStep3.SideBarAdvanced {}
                ]
            }
        }

    ]

    /////////////
    // STATUS BAR
    /////////////

    statusBar: EaElements.StatusBar {
        visible: EaGlobals.Variables.appBarCurrentIndex !== 0

        model: XmlListModel {
            ///xml: ExGlobals.Constants.proxy.project.statusModelAsXml
            query: "/root/item"

            XmlRole { name: "label"; query: "label/string()" }
            XmlRole { name: "value"; query: "value/string()" }
        }
    }

    ///////////////
    // Init dialogs
    ///////////////

    // Application dialogs (invisible at the beginning)
    ExProjectPage.ProjectDescriptionDialog {
        onAccepted: {
            ExGlobals.Constants.proxy.project.projectCreated = true
            ExGlobals.Variables.step1PageEnabled = true
        }
    }

    ExComponents.CloseDialog {
        id: closeDialog
    }

    EaElements.Dialog {
        id: resetStateDialog

        title: qsTr("Reset state")

        EaElements.Label {
            horizontalAlignment: Text.AlignHCenter
            text: qsTr("Are you sure you want to reset the application to its\noriginal state without project, phases and data?\n\nThis operation cannot be undone.")
        }

        footer: EaElements.DialogButtonBox {
            EaElements.Button {
                text: qsTr("Cancel")
                onClicked: resetStateDialog.close()
            }

            EaElements.Button {
                text: qsTr("OK")
                onClicked: {
                    EaGlobals.Variables.appBarCurrentIndex = 0
                    ExGlobals.Variables.projectPageEnabled = false
                    ExGlobals.Variables.step1PageEnabled = false
                    ExGlobals.Constants.proxy.project.resetState()
                    resetStateDialog.close()
                }
                Component.onCompleted: ExGlobals.Variables.resetStateOkButton = this
            }
        }
    }

    ////////
    // Misc
    ////////

    onClosing: {
        window.quit()
    }

    Component.onCompleted: {
        ExGlobals.Variables.appBarCentralTabs = appBarCentralTabs

        // DEBUG:
        //EaStyle.Sizes.defaultScale = parseInt("150%")
    }

}
