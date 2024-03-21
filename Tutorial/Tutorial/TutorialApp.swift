//
//  TutorialApp.swift
//  Tutorial
//
//  Created by Norbert Agoston on 27.02.2024.
//

import SwiftUI

@main
struct TutorialApp: App {
    @State private var model = ViewModel()
    var body: some Scene {
        WindowGroup {
            Areas()
                .environment(model)
        }
//        .windowStyle(.plain)
//        .defaultSize(CGSize(width: 200, height: 150))
        

        WindowGroup(id: "EquipmentRealityArea") {
            EquipmentRealityArea()
                .environment(model)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)
        
        ImmersiveSpace(id: "FullEquipmentRealityArea") {
            FullEquipmentRealityArea()
                .environment(model)
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }
}
