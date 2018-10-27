//
//  Inventory.swift
//  TomachelaApp
//
//  Created by Ricardo Yepez on 10/26/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import Foundation


struct Inventory:Codable {
    let total:Int
    let totalSells:Int
    let units:String
    
    enum CodingKeys: String, CodingKey {
        case total
        case totalSells = "total_sells"
        case units
        
    }
    
    
    
}

