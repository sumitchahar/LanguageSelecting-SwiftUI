//
//  InformationItemsMVVM.swift
//  LocalizationView
//
//  Created by Sumit on 18/08/24.
//

import Foundation

 class InformationItemsMVVM:ObservableObject {
    
    @Published var searchArr:[InformationItems] = []
    
    @Published var items:[InformationItems] = [
        InformationItems(name: "GreenIcon1", image: "swiftUI-Img", details: "The list needs to be embedded inside a Navigation View, NavigationStackView, or NavigationSplitView, in order for the search text field to appear in the navigation bar."),
        InformationItems(name: "GreenIcon2", image: "PDF-Document", details: "The list needs to be embedded inside a Navigation View, NavigationStackView, or NavigationSplitView, in order for the search text field to appear in the navigation bar."),
        InformationItems(name: "AreenIcon1", image: "MusicBack", details: "The list needs to be embedded inside a Navigation View, NavigationStackView, or NavigationSplitView, in order for the search text field to appear in the navigation bar."),
        InformationItems(name: "GreenIcon4", image: "GreenImage", details: "The list needs to be embedded inside a Navigation View,in order for the search text field to appear in the navigation bar."),
        InformationItems(name: "GreenIcon5", image: "download", details: "The list needs to be embedded inside a Navigation View, NavigationStackView, or NavigationSplitView, in order for the search text field to appear in the navigation bar."),
        InformationItems(name: "PreenIcon3", image: "backgroun4", details: "The list needs to be embedded inside a Navigation View, NavigationStackView, or NavigationSplitView, in order for the search text field to appear in the navigation bar."),
        InformationItems(name: "GreenIcon1", image: "PDF-Document", details: "There are three common reasons this error occurs, and all are relatively easy to fix."),
        InformationItems(name: "AreenIcon8", image: "swiftUI-Img", details: "The list needs to be embedded inside a Navigation View, NavigationStackView, or NavigationSplitView, in order for the search text field to appear in the navigation bar."),
        InformationItems(name: "GreenIcon2", image: "backgroun4", details: "The list needs to be embedded inside a Navigation View, NavigationStackView, or NavigationSplitView, in order for the search text field to appear in the navigation bar."),
        InformationItems(name: "GreenIcon10", image: "MusicBack", details: "The list needs to be embedded inside a Navigation View, NavigationStackView, or NavigationSplitView, in order for the search text field to appear in the navigation bar."),
        InformationItems(name: "HreenIcon3", image: "download", details: "There are three common reasons this error occurs, and all are relatively easy to fix."),
        InformationItems(name: "GreenIcon12", image: "PDF-Document", details: "There are three common reasons this error occurs, and all are relatively easy to fix."),
        InformationItems(name: "GreenIcon4", image: "swiftUI-Img", details: "The list needs to be embedded inside a Navigation View, NavigationStackView, or NavigationSplitView, in order for the search text field to appear in the navigation bar."),
    ]
    
 }
