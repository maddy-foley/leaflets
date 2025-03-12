//
//  CategoryModel.swift
//  Leaflets
//
//  Created by Maddy Foley on 2/27/25.
//
import SwiftData
import Foundation


@Model
final class Category{
    var id: UUID
    var name: String
    
    init(id: UUID = UUID(), name: String){
        self.id = id
        self.name = name
    }
}

