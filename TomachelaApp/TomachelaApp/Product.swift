//
//  Item.swift
//  TomachelaApp
//
//  Created by Carlos Santiago Cruz on 20/10/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//
import Foundation
import UIKit

class Product: NSObject {
    var name: String
    var category: String
    var valueInDollars: Int
    
    // A designated initializer is a primary initializer for the class.
    // Every class has at least one designated initializer.
    
    init(name: String, category: String, valueInDollars: Int) {
        self.name = name
        self.category = category
        self.valueInDollars = valueInDollars
        super.init()
    }
    // convenience initializers are optional.
    convenience init(random: Bool = false) {
        if random {
            let beers = ["William Street Beer", "Birra Levante", "Ippon Matsu Beer", "TerraCotta", "Finísima", "Staropramen Lager – edición limitada", "Dolina – Moruba"]
            let randomIndex = arc4random_uniform(UInt32(beers.count))
            let randomBeer = beers[Int(randomIndex)]
            let randomNameOfBeer = "\(randomBeer)"
            let randomValue = Int(arc4random_uniform(50))
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            self.init(name: randomNameOfBeer, category: randomSerialNumber, valueInDollars: randomValue)
        } else {
            self.init(name: "", category: "", valueInDollars: 0)
        }
    }
}
