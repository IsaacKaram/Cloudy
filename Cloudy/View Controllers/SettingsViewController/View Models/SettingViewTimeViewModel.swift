//
//  SettingViewTimeViewModel.swift
//  Cloudy
//
//  Created by Isaac Karam on 6/16/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import UIKit

struct SettingViewTimeViewModel{
    //MARK:-Properties
    let timeNotation : TimeNotation
    
    var text : String {
        switch timeNotation {
        case .twelveHour:
            return "12 Hour"
        case .twentyFourHour:
            return "24 Hour"
        }
    }
    
    var accessoryType : UITableViewCellAccessoryType {
        if UserDefaults.timeNotation()  == timeNotation{
            return .checkmark
        }
        return .none
    }
}

extension SettingViewTimeViewModel : SettingsRepresentable {
    
}
