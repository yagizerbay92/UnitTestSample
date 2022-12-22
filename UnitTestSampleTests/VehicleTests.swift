//
//  VehicleTests.swift
//  UnitTestSampleTests
//
//  Created by Erbay, Yagiz on 21.12.2022.
//

import XCTest
@testable import UnitTestSample

class VehicleTests: XCTestCase {
    
    var mercedes: Vehicle!
    var boeing: Vehicle!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        mercedes = Vehicle(type: .Car)
        boeing = Vehicle(type: .PassengerAircraft)
      }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        mercedes = nil
        boeing = nil
      }
    
    func testPlaneFasterThanCar() {
        //Act
        let minutes = 60
        
        //Arrenge
        mercedes.startEngine(minutes: minutes)
        boeing.startEngine(minutes: minutes)
        
        //Assert
        XCTAssertTrue(boeing.returnKilometers() > mercedes.returnKilometers())
    }

    func testFetchPostList() {
        let exp = expectation(description:"fetching post list from server")
        let session: URLSession = URLSession(configuration: .default)
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        guard let customUrl = url else { return }
        
        session.dataTask(with: customUrl) { data, response, error in
            XCTAssertNotNil(data)
            exp.fulfill()
        }.resume()
        waitForExpectations(timeout: 5.0) { (error) in
            print(error?.localizedDescription ?? "error")
        }
    }
}
