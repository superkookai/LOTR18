//
//  Currency.swift
//  LOTR18
//
//  Created by Weerawut Chaiyasomboon on 10/08/2568.
//

import Foundation
import SwiftUI

enum Currency: Double, Identifiable, CaseIterable {
    case goldpiece = 1
    case goldpenny = 4
    case silverpiece = 16
    case silverpenny = 64
    case copperpenny = 6400
    
    var id: UUID { UUID() }
    
    var image: ImageResource {
        switch self {
        case .goldpiece: .goldpiece
        case .goldpenny: .goldpenny
        case .silverpiece: .silverpiece
        case .silverpenny: .silverpenny
        case .copperpenny: .copperpenny
        }
    }
    
    var name: String {
        switch self {
        case .goldpiece: "Gold Piece"
        case .goldpenny: "Gold Penny"
        case .silverpiece: "Silver Piece"
        case .silverpenny: "Silver Penny"
        case .copperpenny: "Copper Penny"
        }
    }
}
