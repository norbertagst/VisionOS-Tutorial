//
//  Areas.swift
//  Tutorial
//
//  Created by Norbert Agoston on 27.02.2024.
//

import SwiftUI

struct Areas: View {
    var body: some View {
        ZStack {
            AmbienceVid()
                .edgesIgnoringSafeArea(.all)
            NavigationStack {
                NavigationToAreas()
            }
        }
    }
}

#Preview {
    Areas()
}
