//
//  TabItem.swift
//  TomachelaApp
//
//  Created by Ricardo Yepez on 10/26/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import Foundation

struct TabItem:Codable{
    let deliveredAt:Date
    
    enum CodingKeys: String, CodingKey {
        case deliveredAt = "delivered_at"
    }
}
