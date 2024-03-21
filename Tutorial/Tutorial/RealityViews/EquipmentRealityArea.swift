//
//  EquipmentRealityArea.swift
//  Tutorial
//
//  Created by Norbert Agoston on 28.02.2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct EquipmentRealityArea: View {
    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "Scene", in: realityKitContentBundle) else {
                fatalError("Unable to load specified model")
            }
            
            content.add(entity)
        }
    }
}

#Preview {
    EquipmentRealityArea()
        .environment(ViewModel())
}
