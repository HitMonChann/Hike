//
//  Item.swift
//  Hike
//
//  Created by Manuel Sanchez Sicilia on 7/3/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
