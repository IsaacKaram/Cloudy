//
//  DailyTemp.swift
//  Cloudy
//
//  Created by Isaac Karam on 5/18/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import Foundation

struct DailyTemp {
    let temperatureMin : Double
    let temperatureMax : Double
}

extension DailyTemp : Codable {
    enum CodingKeys : String, CodingKey {
        case temperatureMin = "min"
        case temperatureMax = "max"
    }
}
