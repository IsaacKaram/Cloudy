//
//  SettingsRepresentable.swift
//  Cloudy
//
//  Created by Isaac Karam on 6/19/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import UIKit

protocol SettingsRepresentable{
    var text : String { get }
    var accessoryType : UITableViewCellAccessoryType { get }
}
