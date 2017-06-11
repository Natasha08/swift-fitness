//
//  UserController.swift
//  FitnessApp
//
//  Created by Natasha Osborne on 6/10/17.
//  Copyright © 2017 Natasha Osborne. All rights reserved.
//

import UIKit

public class UserController {
    let loginUrl = URL(string: "https://mycolofitness.herokuapp.com/api/token")!

    public func loginUser(username: String, password: String) {
        var request = URLRequest(url: loginUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField:
        "Content-Type")
        
        let data: [String: Any] = ["username": username, "password": password]
        
        let jsonData = try? JSONSerialization.data(withJSONObject:
            data, options: [])
        request.httpBody = jsonData
        
        let task = URLSession.shared.dataTask(with: request)
        { (data, response, error) in

            let json = try? JSONSerialization.jsonObject(with: data!, options: [])
            if let dictionary = json as? [String: Any] {
                if let token = dictionary["token"] as? String {
                    User.init(email: username, password: password, token: token)
                }

            }
            User.init(email: username, password: password, token: "unauthorized")
        }
        task.resume()
    }
}
