//
//  CategoryList.swift
//  Leaflets
//
//  Created by Maddy Foley on 2/27/25.
//

import SwiftUI
import SwiftData

struct CategoryList: View {
    @Query private var categories: [Category]
    var body: some View {
        VStack{
            NavigationSplitView {

                List(categories, id: \.id) { category in
                    NavigationLink{
                        CategoryDetail(category: category)
                    } label: {
                        Text(category.name)
                    }
                    
                }
            } detail: {
                
            }
                
        }
    }

}
