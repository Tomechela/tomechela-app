//
//  User.swift
//  TomachelaApp
//
//  Created by Ricardo Yepez on 10/26/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import Foundation

struct User:Codable{
    let currentSignInAt:Date
    let currentSignInIp:String
    let email:String
    let encryptedPassword:String
    let firstName:String
    let lastName:String
    let lastSignInAt:Date
    let lastSignInIp:String
    let rememberCreatedAt:Date
    let resetPasswordSentAt:Date
    let resetPasswordToken:String
    let role:Int
    let signInCount:Int
    
    
    enum CodingKeys: String, CodingKey {
        case currentSignInAt = "current_sign_in_at"
        case currentSignInIp = "current_sign_in_ip"
        case email
        case encryptedPassword = "encrypted_password"
        case firstName = "first_name"
        case lastName = "last_name"
        case lastSignInAt = "last_sign_in_at"
        case lastSignInIp = "last_sign_in_ip"
        case rememberCreatedAt="remember_created_at"
        case resetPasswordSentAt = "reset_password_sent_at"
        case resetPasswordToken = "reset_password_token"
        case role
        case signInCount = "sign_in_count"
    }
}
