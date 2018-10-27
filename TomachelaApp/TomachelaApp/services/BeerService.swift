//
//  BeerService.swift
//  TomachelaApp
//
//  Created by Ricardo Yepez on 10/20/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import Foundation

struct BeerService {
    static let shared = BeerService()
    let client = Client(baseURLComponents: URLComponents(string: "https://opentab.herokuapp.com/api/v1/business")!)
    let jsonDecoder = JSONDecoder()
    
    func all(_ completion: @escaping ([BeerProduct]) -> Void) {
        client.get(path: "/1/beers") { data in
            guard let jsonData = data else { return }
            let result = try? self.jsonDecoder.decode([BeerProduct].self, from: jsonData)
            completion(result ?? [BeerProduct]())
        }
    }
    
    
    
    func getBeer(withId beerId:Int)  {
        // TODO: return Beer
    }
    
    // showDetail
    
    
}
