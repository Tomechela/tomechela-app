//
//  UserService.swift
//  TomachelaApp
//
//  Created by Ricardo Yepez on 10/26/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import Foundation


struct UserService {
    static let shared = BeerService()
    let client = Client(baseURLComponents: URLComponents(string: "https://plasticfishes.herokuapp.com")!)
    let jsonDecoder = JSONDecoder()
    
    
    func login(withUser:User) -> Bool {
        
        
        
        return false
    }
    
    

}
