//
//  CategoryList.swift
//  Leaflets
//
//  Created by Maddy Foley on 2/27/25.
//

import SwiftUI


struct CategoryList: View {
    var body: some View {
            NavigationSplitView{
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
