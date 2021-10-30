//
//  todoAppApp.swift
//  todoApp
//
//  Created by Sungur on 16.10.2021.
//

import SwiftUI

/*
 
 Архитектура MVVM
 
 Model - data point (основная локига программы)
 View - UI
 ViewModel - manages Models for View (Служит прослойкой между Model и View)
 
 */


@main
struct todoAppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
