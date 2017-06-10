//
//  FitnessAppTests.swift
//  FitnessAppTests
//
//  Created by Natasha Osborne on 6/9/17.
//  Copyright © 2017 Natasha Osborne. All rights reserved.
//

import XCTest
@testable import FitnessApp

class FitnessAppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //MARK: User Class Tests
    func testUserInitializationSucceeds() {
        let newUser = User.init(email: "testuser@example.com", password: "password")
        XCTAssertNotNil(newUser)
    }
    
    func testUserInitializationFails() {
        let emptyEmailUser = User.init(email: "", password: "password")
        XCTAssertNil(emptyEmailUser)
        
        let emptyPasswordUser = User.init(email: "testuser@example.com", password: "")
        XCTAssertNil(emptyPasswordUser)
    }
}
