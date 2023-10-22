//
//  Action.swift
//  edUcate
//
//  Created by Ananya Chintalapudi on 10/21/23.
//

import Foundation

struct Action: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let handler: () -> Void
}
