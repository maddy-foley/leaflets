//
//  Item.swift
//  Leaflets
//
//  Created by Maddy Foley on 2/24/25.
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
