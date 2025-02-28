//
//  Calendar.swift
//  Leaflets
//
//  Created by Maddy Foley on 2/27/25.
//

import SwiftUI
import UIKit







struct CalendarView: UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    let interval: DateInterval
    @Binding var selectedDate: DateComponents?
    
    class Coordinator: NSObject {
        var parent: CalendarView
        
        
        init(_ calendarView: CalendarView) {
            parent = calendarView
        }
    }
    
    func makeUIView(context: Context) -> UICalendarView {
        let calendarView = UICalendarView()
        calendarView.fontDesign = .rounded
        calendarView.calendar = Calendar(identifier: .gregorian)
        calendarView.availableDateRange = interval
        calendarView.locale = .current
        
        return calendarView
    }


    func updateUIView(_ uiView: UICalendarView, context: Context) {

    }
}




