//
//  Calendar.swift
//  Leaflets
//
//  Created by Maddy Foley on 2/27/25.
//

import SwiftUI
import UIKit

struct CalendarView: UIViewRepresentable {
    let interval: DateInterval
    
    func makeUIView(context: Context) -> UICalendarView {
        let view = UICalendarView()
        view.calendar = Calendar(identifier: .gregorian)
        view.availableDateRange = interval
        return view
    }
    
    func updateUIView(_ uiView: UICalendarView, context: Context) {

    }
}


