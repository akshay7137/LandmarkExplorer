//
//  PracticeAssignment4App.swift
//  PracticeAssignment4
//
//  Created by Akshay Singh on 29/05/25.
//

import SwiftUI

@main
struct PracticeAssignment4App: App {
    var body: some Scene {
        WindowGroup {
            LandmarkList()
                .environment(ModelData())
        }
    }
}
