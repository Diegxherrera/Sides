//
//  SidesApp.swift
//  Sides
//
//  Created by Diego Herrera Redondo on 23/10/22.
//

import SwiftUI

@main
struct SidesApp: App {
    @AppStorage("first_time") var first_time: Bool = true
    var body: some Scene {
        WindowGroup {
            if first_time {
                StartPage()
            } else {
                MainView()
            }
        }
    }
}
