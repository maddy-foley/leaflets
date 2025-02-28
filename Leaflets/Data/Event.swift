//
//  Event.swift
//  Leaflets
//
//  Created by Maddy Foley on 2/27/25.
//
import Foundation
import SwiftUI

struct Event: Identifiable, Hashable {
    let id = UUID()
    var eventType: String
    var date: Date
    var details: String
    
    
    init(eventType: String, date: Date, details: String) {
        self.eventType = eventType
        self.date = date
        self.details = details
    }
    
    var dateComponents: DateComponents {
            var dateComponents = Calendar.current.dateComponents(
                [.month,
                 .day,
                 .year,
                 .hour,
                 .minute],
                from: date)
            dateComponents.timeZone = TimeZone.current
            dateComponents.calendar = Calendar(identifier: .gregorian)
            return dateComponents
        }

}
