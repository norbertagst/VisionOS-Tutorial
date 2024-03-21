//
//  FullEquipmentRealityArea.swift
//  Tutorial
//
//  Created by Norbert Agoston on 28.02.2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct FullEquipmentRealityArea: View {
    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "Immersive", in: realityKitContentBundle) else {
                fatalError("Unable to load specified model")
            }
            
            content.add(entity)
        }
    }
}

#Preview {
    FullEquipmentRealityArea()
        .environment(ViewModel())
}
