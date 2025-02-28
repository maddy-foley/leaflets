//
//  CalendarView.swift
//  Leaflets
//
//  Created by Maddy Foley on 2/27/25.
//

import SwiftUI
import UIKit

struct MyCalendar: View{
    @State private var selectedDate: DateComponents?
  
    var body: some View{
        VStack{
            ScrollView{
                CalendarView(interval: DateInterval(start: .distantPast, end: .distantFuture), selectedDate: $selectedDate)
            }
        }
    }
}
