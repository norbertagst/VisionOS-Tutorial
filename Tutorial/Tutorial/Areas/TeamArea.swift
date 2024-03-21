//
//  TeamArea.swift
//  Tutorial
//
//  Created by Norbert Agoston on 28.02.2024.
//

import SwiftUI

struct TeamArea: View {
    var body: some View {
        HStack(spacing: 50) {
            ForEach(TeamMembers.allCases) { teamMember in
                VStack(alignment: .leading, spacing: 10) {
                    Image("team-member-\(teamMember.name)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 200)
                        .clipped()
                    Text(teamMember.fullName)
                        .font(.system(size: 22, weight: .bold))
                    Text(teamMember.role)
                        .font(.system(size: 18))
                    Text(teamMember.about)
                        .font(.system(size: 20))
                }
                .frame(minWidth: 180, minHeight: 200)
                .padding(40)
                .glassBackgroundEffect()
            }
        }
        .padding(20)
    }
}

#Preview {
    TeamArea()
}
