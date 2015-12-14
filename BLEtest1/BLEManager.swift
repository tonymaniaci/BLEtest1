//
//  BLEManager.swift
//  BLEtest1
//
//  Created by tmaniaci on 12/10/15.
//  Copyright © 2015 iTel Companies, Inc. All rights reserved.
//

import Foundation
import CoreBluetooth

class BLEManager {
    
    var centralManager: CBCentralManager!
    var bleHandler: BLEHandler // delegate
    
    init() {
        self.bleHandler = BLEHandler()
        self.centralManager = CBCentralManager(delegate: self.bleHandler, queue: nil)
        
    }
    
}
