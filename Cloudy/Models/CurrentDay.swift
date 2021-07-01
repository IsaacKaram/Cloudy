//
//  CurrentDay.swift
//  Cloudy
//
//  Created by Isaac Karam on 5/18/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import Foundation

struct CurrentDay{
    let time : TimeInterval
    let temperature : Double
    let windSpeed : Double
    let weather : [Weather]
}

extension CurrentDay : Codable {
    enum CodingKeys : String, CodingKey{
        case time = "dt"
        case temperature = "temp"
        case weather = "weather"
        case windSpeed = "wind_speed"
    }
}
