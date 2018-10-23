//
//  ProductStore.swift
//  TomachelaApp
//
//  Created by Carlos Santiago Cruz on 20/10/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import Foundation
import UIKit

class ProductStore {
    var allProducts = [Product]()
    
    init() {
        for _ in 0..<15 {
            createProduct()
        }
    }
    
    @discardableResult func createProduct() -> Product {
        let newProduct = Product(random: true)
        allProducts.append(newProduct)
        return newProduct
    }
    
}
