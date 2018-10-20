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
    var valueInDollars: Int
    var category: String
    
    // A designated initializer is a primary initializer for the class.
    // Every class has at least one designated initializer.
    
    init(name: String, category: String, valueInDollars: Int) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.category = category
        super.init()
    }
    // convenience initializers are optional.
    convenience init(random: Bool = false) {
        if random {
            let adjectives = ["good", "light", "lagger"]
            let nouns = ["Levanta Muertos", "VivaLaVida", "Wera"]
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            self.init(name: randomName, category: randomSerialNumber, valueInDollars: randomValue)
        } else {
            self.init(name: "", category: "", valueInDollars: 0)
        }
    }
}
