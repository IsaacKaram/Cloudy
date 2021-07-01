//
//  SettingViewTempratureViewModel.swift
//  Cloudy
//
//  Created by Isaac Karam on 6/16/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import UIKit

struct SettingViewTempratureViewModel {
    //MARK :- Properties
    let temperatureNotation : TemperatureNotation
    
    var text : String {
        switch temperatureNotation {
        case .fahrenheit:
            return "Fahrenheit"
        case .celsius:
            return "Celsius"
        }
    }
    
    var accessoryType : UITableViewCellAccessoryType {
        if UserDefaults.temperatureNotation() == temperatureNotation {
            return .checkmark
        }
        return .none
    }
    
}

extension SettingViewTempratureViewModel : SettingsRepresentable {
    
}
