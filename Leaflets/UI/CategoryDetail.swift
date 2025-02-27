//
//  CategoryDetail.swift
//  Leaflets
//
//  Created by Maddy Foley on 2/27/25.
//

import SwiftUI

struct CategoryDetail: View {
    var category: Category
    
    var body: some View {
        Text(category.name)
        if (category.name == "Calendar"){
            MyCalendar()
        }
    }
}
