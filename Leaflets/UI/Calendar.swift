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
    

    func makeUIView(context: Context) -> UICalendarView {
        let calendarView = UICalendarView()
        calendarView.delegate = context.coordinator
        calendarView.fontDesign = .rounded
        calendarView.calendar = Calendar(identifier: .gregorian)
        calendarView.availableDateRange = interval
        calendarView.locale = .current
        let dateSelection = UICalendarSelectionSingleDate(delegate: context.coordinator)
        calendarView.selectionBehavior = dateSelection
        
        return calendarView
    }
    
    

    func updateUIView(_ uiView: UICalendarView, context: Context) {

    }
    
  
       
        
}




class Coordinator: NSObject, UICalendarViewDelegate, UICalendarSelectionSingleDateDelegate {
    func dateSelection(_ selection: UICalendarSelectionSingleDate, didSelectDate dateComponents: DateComponents?) {
        
    }
    
    var parent: CalendarView
    var calendarView: UICalendarView? = nil
    var decorations: [Date?: UICalendarView.Decoration]
    
    
    init(_ calendarView: CalendarView) {
        parent = calendarView
        let valentinesDay = DateComponents(
                    calendar: Calendar(identifier: .gregorian),
                    year: 2025,
                    month: 2,
                    day: 14
                )
                
                // Create a calendar decoration for Valentine's day.
                let heart = UICalendarView.Decoration.image(
                    UIImage(systemName: "heart.fill"),
                    color: UIColor.red,
                    size: .large
                )
                
                decorations = [valentinesDay.date: heart]
    }
    
    func calendarView(_ calendarView: UICalendarView, decorationFor dateComponents: DateComponents) -> UICalendarView.Decoration? {
    
            let day = DateComponents(
                calendar: dateComponents.calendar,
                year: dateComponents.year,
                month: dateComponents.month,
                day: dateComponents.day
            )
    
            return decorations[day.date]
        }
    
    func dateSelection(
          _ selection: UICalendarSelectionSingleDate,
          canSelectDate dateComponents: DateComponents?
      ) -> Bool {
  
          return dateComponents != nil
      }
  

      func add(decoration: UICalendarView.Decoration, on date: Date) {
  
          let dateComponents = Calendar.current.dateComponents(
              [.calendar, .year, .month, .day ],
              from: date
          )
  
  
          decorations[dateComponents.date] = decoration
  
  
          if let calendarView {
              calendarView.reloadDecorations(
                  forDateComponents: [dateComponents],
                  animated: true
              )
          }
      }
}

//
//class CalendarViewDelegate: NSObject, UICalendarViewDelegate {
//    var calendarView: UICalendarView? = nil
//    var decorations: [Date?: UICalendarView.Decoration]
//    
//    override init() {
//        
//        let valentinesDay = DateComponents(
//            calendar: Calendar(identifier: .gregorian),
//            year: 2025,
//            month: 2,
//            day: 14
//        )
//        
//        let heart = UICalendarView.Decoration.image(
//            UIImage(systemName: "heart.fill"),
//            color: UIColor.red,
//            size: .large
//        )
//        
//        decorations = [valentinesDay.date: heart]
//    }
//    
//    func calendarView(_ calendarView: UICalendarView, decorationFor dateComponents: DateComponents) -> UICalendarView.Decoration? {
//        
//        let day = DateComponents(
//            calendar: dateComponents.calendar,
//            year: dateComponents.year,
//            month: dateComponents.month,
//            day: dateComponents.day
//        )
//        
//        return decorations[day.date]
//    }
//    
//    func dateSelection(
//        _ selection: UICalendarSelectionSingleDate,
//        canSelectDate dateComponents: DateComponents?
//    ) -> Bool {
//        
//        return dateComponents != nil
//    }
//    
//    func dateSelection(_ selection: UICalendarSelectionSingleDate, didSelectDate dateComponents: DateComponents?) {
//        
//    }
//    func add(decoration: UICalendarView.Decoration, on date: Date) {
//        
//        let dateComponents = Calendar.current.dateComponents(
//            [.calendar, .year, .month, .day ],
//            from: date
//        )
//        
//        
//        decorations[dateComponents.date] = decoration
//        
//        
//        if let calendarView {
//            calendarView.reloadDecorations(
//                forDateComponents: [dateComponents],
//                animated: true
//            )
//        }
//    }
//}
