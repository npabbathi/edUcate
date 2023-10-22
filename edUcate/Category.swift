//
//  Category.swift
//  edUcate
//
//  Created by Banah Daniella Abdeljaber on 10/21/23.
//

import Foundation

enum Category: String, CaseIterable {
    case general
    case business
    case technology
    case entertainment
    case sports
    case science
    case health
    
    var text: String {
        if self == .general {
            return "EDUCATE 4U"
        }
        return rawValue.capitalized
    }
}

extension Category: Identifiable {
    var id: Self { self }
}
