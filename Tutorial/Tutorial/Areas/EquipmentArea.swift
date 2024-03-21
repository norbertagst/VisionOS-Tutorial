//
//  EquipmentArea.swift
//  Tutorial
//
//  Created by Norbert Agoston on 28.02.2024.
//

import SwiftUI

struct EquipmentArea: View {
    @Environment(ViewModel.self) private var model
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    
    var body: some View {
        @Bindable var model = model
        
        HStack(spacing: 40) {
            VStack {
                Image(systemName: "globe")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(10)
                Toggle(model.isShowingBalls ? "Hide balls" : "Show Balls",
                       isOn: $model.isShowingBalls)
                .onChange(of: model.isShowingBalls) { _, isShowing in
                    if isShowing {
                        openWindow(id: "EquipmentRealityArea")
                    } else {
                        dismissWindow(id: "EquipmentRealityArea")
                    }
                }
                .toggleStyle(.button)
                .font(.title)
                .padding(.top, 20)
            }
            
            VStack {
                Image(systemName: "bubbles.and.sparkles")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(10)
                Toggle(model.isShowingSpaceBalls ? "Hide space balls" : "Show space Balls",
                       isOn: $model.isShowingSpaceBalls)
                .onChange(of: model.isShowingSpaceBalls) { _, isShowing in                    
                    Task {
                        if isShowing {
                            await openImmersiveSpace(id: "FullEquipmentRealityArea")
                        } else {
                            await dismissImmersiveSpace()
                        }
                    }
                }
                .toggleStyle(.button)
                .font(.title)
                .padding(.top, 20)
            }
            
        }
    }
}

#Preview {
    EquipmentArea()
        .environment(ViewModel())
}
