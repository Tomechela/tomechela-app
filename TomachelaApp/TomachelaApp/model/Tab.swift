//
//  Tab.swift
//  TomachelaApp
//
//  Created by Ricardo Yepez on 10/26/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import Foundation

struct Tab:Codable{
    let closedAt:Date
    let subtotalCents:Int
    let tabItemsCount:Int
    
    enum CodingKeys: String, CodingKey {
        case closedAt = "closed_at"
        case subtotalCents = "subtotal_cents"
        case tabItemsCount = "tab_items_count"
    }
}
