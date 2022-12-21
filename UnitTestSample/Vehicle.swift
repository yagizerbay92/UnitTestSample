//
//  Vehicle.swift
//  UnitTestSample
//
//  Created by Erbay, Yagiz on 21.12.2022.
//

import Foundation

class Vehicle {
    private var miles = 0
    private let type: VehicleType
    
    init(type: VehicleType) {
        self.type = type
    }
    
    func startEngine(minutes: Int) {
        var speed = 0
        
        switch type {
        case .PassengerAircraft:
            speed = 575
        case .FighterJet:
            speed = 1320
        case .HighSpeedTrain:
            speed = 217
        case .Car:
            speed = 100
        case .Bicycle:
            speed = 10
        }

        self.miles = speed * (minutes / 60)
    }
    
    func returnMiles() -> Int {
        return self.miles
    }
}

enum VehicleType {
    case PassengerAircraft
    case FighterJet
    case HighSpeedTrain
    case Car
    case Bicycle
}
