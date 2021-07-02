//
//  SettingViewTempratureViewModelTests.swift
//  CloudyTests
//
//  Created by Isaac Karam on 7/2/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import XCTest
@testable import Cloudy

class SettingViewTempratureViewModelTests: XCTestCase {

    //MARK:- Setup & TearDown
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
        
        UserDefaults.standard.removeObject(forKey: UserDefaultsKeys.temperatureNotation)
    }
    
    func testText_Fahrenheit(){
        let viewModel = SettingViewTempratureViewModel(temperatureNotation: .fahrenheit)
        
        XCTAssertEqual(viewModel.text, "Fahrenheit")
    }
    
    func testText_Celsius(){
        let viewModel = SettingViewTempratureViewModel(temperatureNotation: .celsius)
        
        XCTAssertEqual(viewModel.text, "Celsius")
    }
    
    func testAccessoryType_Celsius_Celsius(){
        let tempNotation : TemperatureNotation = .celsius
        UserDefaults.standard.set(tempNotation.rawValue, forKey: UserDefaultsKeys.temperatureNotation)
        
        let viewModel = SettingViewTempratureViewModel(temperatureNotation: .celsius)
        XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.checkmark)
    }
    
    func testAccessoryType_Celsius_Fahrenheit(){
        let tempNotation : TemperatureNotation = .celsius
        UserDefaults.standard.set(tempNotation.rawValue, forKey: UserDefaultsKeys.temperatureNotation)
        
        let viewModel = SettingViewTempratureViewModel(temperatureNotation: .fahrenheit)
        XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.none)
    }
    
    func testAccessoryType_Fahrenheit_Fahrenheit(){
        let tempNotation : TemperatureNotation = .fahrenheit
        UserDefaults.standard.set(tempNotation.rawValue, forKey: UserDefaultsKeys.temperatureNotation)
        
        let viewModel = SettingViewTempratureViewModel(temperatureNotation: .fahrenheit)
        XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.checkmark)
    }
    
    func testAccessoryType_Fahrenheit_Celsius(){
        let tempNotation : TemperatureNotation = .fahrenheit
        UserDefaults.standard.set(tempNotation.rawValue, forKey: UserDefaultsKeys.temperatureNotation)
        
        let viewModel = SettingViewTempratureViewModel(temperatureNotation: .celsius)
        XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.none)
    }

}
