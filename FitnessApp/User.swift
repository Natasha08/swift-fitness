//
//  Users.swift
//  FitnessApp
//
//  Created by Natasha Osborne on 6/10/17.
//  Copyright © 2017 Natasha Osborne. All rights reserved.
//

import UIKit

public struct User {
    
    public init?(email: String, password: String) {
        
        guard !password.isEmpty else {
            return nil
        }
        
        guard !email.isEmpty else {
            return nil
        }
        
        self.email = email
        self.password = password
    }

    let email: String
    let password: String
    
}
