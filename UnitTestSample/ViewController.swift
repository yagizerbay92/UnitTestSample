//
//  ViewController.swift
//  UnitTestSample
//
//  Created by Erbay, Yagiz on 21.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let mercedes = Vehicle(type: .Car)
        mercedes.startEngine(minutes: 60)
        print(mercedes.returnKilometers())
    }

}

