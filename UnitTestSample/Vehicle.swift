//
//  Vehicle.swift
//  UnitTestSample
//
//  Created by Erbay, Yagiz on 21.12.2022.
//

import Foundation

enum VehicleType {
    case PassengerAircraft
    case FighterJet
    case HighSpeedTrain
    case Car
    case Bicycle
}

class Vehicle {
    private var kilometers = 0
    private var type: VehicleType
    
    init(type: VehicleType) {
        self.type = type
    }
    
    func startEngine(minutes: Int) {
        var speed = 0
        
        switch type {
        case .PassengerAircraft:
            speed = 926
        case .FighterJet:
            speed = 2125
        case .HighSpeedTrain:
            speed = 350
        case .Car:
            speed = 160
        case .Bicycle:
            speed = 16
        }

        self.kilometers = speed * (minutes / 60)
    }
    
    func returnKilometers() -> Int {
        return self.kilometers
    }
}
