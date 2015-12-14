//
//  BLEHandler.swift
//  BLEtest1
//
//  Created by tmaniaci on 12/10/15.
//  Copyright © 2015 iTel Companies, Inc. All rights reserved.
//

import Foundation
import CoreBluetooth


class BLEHandler : NSObject, CBCentralManagerDelegate {

    override init() {
        super.init()
    }
    
    func centralManagerDidUpdateState(central: CBCentralManager) {
        
        switch (central.state)
        {
        case .Unsupported:
            print("BLE is Unsupported")
        
        case .Unauthorized:
            print("BLE is Unauthorized")
        
        case .Unknown:
            print("BLE is Unknown")
        
        case .Resetting:
            print("BLE is Resetting")
        
        case .PoweredOff:
            print("BLE is PoweredOff")
         
        case .PoweredOn:
            print("BLE is PoweredOn")
            print("Start Scanning")
            central.scanForPeripheralsWithServices(nil, options: nil)
            
        default:
            print("BLE is default")
        
        }
        
    }
    
    func centralManager(central: CBCentralManager, didConnectPeripheral peripheral: CBPeripheral, advertisementData: [NSObject: AnyObject], RSSI: NSNumber) {
        
        print("\(peripheral.name) : \(RSSI) dBm")
    }
}
