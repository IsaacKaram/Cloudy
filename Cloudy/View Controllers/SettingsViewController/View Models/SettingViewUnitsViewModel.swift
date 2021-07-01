//
//  SettingViewUnitsViewModel.swift
//  Cloudy
//
//  Created by Isaac Karam on 6/16/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import UIKit

struct SettingViewUnitsViewModel {
    //Mark:- Properties
    let unitsNotation : UnitsNotation
    
    var text : String {
        switch  unitsNotation {
        case .imperial:
            return "Imperial"
        case .metric:
            return "Metrics"
        }
    }
    
    var accessoryType : UITableViewCellAccessoryType{
        if UserDefaults.unitsNotation() == unitsNotation {
            return .checkmark
        }
        return .none
    }
    
}

extension SettingViewUnitsViewModel : SettingsRepresentable {
    
}
