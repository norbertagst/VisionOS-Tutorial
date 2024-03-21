//
//  Area.swift
//  Tutorial
//
//  Created by Norbert Agoston on 27.02.2024.
//

import Foundation

enum Area: String, Identifiable, CaseIterable, Equatable {
    case team, equipment, mission
    var id: Self { self }
    var name: String { rawValue.capitalized }
    var title: String {
        switch self {
        case .team:
            "SOW 54 team members"
        case .equipment:
            "SOW 54 mission equipment"
        case .mission:
            "SOW 54 mission trailer"
        }
    }
}
