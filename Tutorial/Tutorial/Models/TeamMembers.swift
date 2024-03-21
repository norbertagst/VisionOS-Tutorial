//
//  TeamMembers.swift
//  Tutorial
//
//  Created by Norbert Agoston on 27.02.2024.
//

import Foundation

enum TeamMembers: String, Identifiable, CaseIterable, Equatable {
    case anya, josh, jessica
    var id: Self { self }
    var name: String { rawValue }
    
    var role: String {
        switch self {
        case .anya:
            "manager"
        case .josh:
            "developer"
        case .jessica:
            "developer"
        }
    }
    
    var fullName: String {
        switch self {
        case .anya:
            "Anya"
        case .josh:
            "Josh"
        case .jessica:
            "Jessica"
        }
    }
    
    var about: String {
        switch self {
        case .anya:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        case .josh:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        case .jessica:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        }
    }
}
