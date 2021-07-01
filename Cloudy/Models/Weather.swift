//
//  Weather.swift
//  Cloudy
//
//  Created by Isaac Karam on 5/18/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import Foundation

struct Weather {
    let icon : String
    let summary : String
}

extension Weather : Codable {
    enum CodingKeys : String , CodingKey{
        case icon = "icon"
        case summary = "description"
    }
}
