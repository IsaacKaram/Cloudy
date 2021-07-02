//
//  SettingViewUnitsViewModelTests.swift
//  CloudyTests
//
//  Created by Isaac Karam on 7/2/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import XCTest
@testable import Cloudy

class SettingViewUnitsViewModelTests: XCTestCase {

    //MARK:- Set Up & Tear Down
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
        
        UserDefaults.standard.removeObject(forKey: UserDefaultsKeys.unitsNotation)
    }
    
    func testText_Imperial(){
        let viewModel = SettingViewUnitsViewModel(unitsNotation: .imperial)
        
        XCTAssertEqual(viewModel.text, "Imperial")
    }
    
    func testText_Metric(){
        let viewModel = SettingViewUnitsViewModel(unitsNotation: .metric)
        
        XCTAssertEqual(viewModel.text, "Metrics")
    }
    
    func testAccessoryType_Imperial_Imperial(){
        let unitNotation : UnitsNotation = .imperial
        UserDefaults.standard.set(unitNotation.rawValue, forKey: UserDefaultsKeys.unitsNotation)
        
        let viewModel =  SettingViewUnitsViewModel(unitsNotation: .imperial)
        XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.checkmark)
        
    }
    
    func testAccessoryType_Imperial_Metric(){
        let unitNotation : UnitsNotation = .imperial
        UserDefaults.standard.set(unitNotation.rawValue, forKey: UserDefaultsKeys.unitsNotation)
        
        let viewModel =  SettingViewUnitsViewModel(unitsNotation: .metric)
        XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.none)
    }
    
    func testAccessoryType_Metric_Metric(){
        let unitNotation : UnitsNotation = .metric
        UserDefaults.standard.set(unitNotation.rawValue, forKey: UserDefaultsKeys.unitsNotation)
        
        let viewModel =  SettingViewUnitsViewModel(unitsNotation: .metric)
        XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.checkmark)
    }
    
    func testAccessoryType_Metric_Imperial(){
        let unitNotation : UnitsNotation = .metric
        UserDefaults.standard.set(unitNotation.rawValue, forKey: UserDefaultsKeys.unitsNotation)
        
        let viewModel =  SettingViewUnitsViewModel(unitsNotation: .imperial)
        XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.none)
    }
}
