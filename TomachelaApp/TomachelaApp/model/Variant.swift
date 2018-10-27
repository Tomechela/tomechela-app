//
//  Variant.swift
//  TomachelaApp
//
//  Created by Ricardo Yepez on 10/26/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import Foundation

struct Variant:Codable{
    let costCents:Int
    let name:String
    let volume:Int
    let volumeUnits:String
    
    enum CodingKeys: String, CodingKey {
        case costCents = "cost_cents"
        case name
        case volume
        case volumeUnits = "volume_units"
        
    }
}
