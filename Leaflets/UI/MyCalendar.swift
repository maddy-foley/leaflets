//
//  CalendarView.swift
//  Leaflets
//
//  Created by Maddy Foley on 2/27/25.
//

import SwiftUI

struct MyCalendar: View{
    var body: some View{
            CalendarView(interval: DateInterval(start:.distantPast, end: .distantFuture)
        )
    }
}
