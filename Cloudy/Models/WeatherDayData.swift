//
//  WeatherDayData.swift
//  Cloudy
//
//  Created by Bart Jacobs on 01/10/16.
//  Copyright © 2016 Cocoacasts. All rights reserved.
//

import Foundation

struct WeatherDayData {
    let time: TimeInterval
    let windSpeed: Double
    let weather : [Weather]?
    let dailyTemp : DailyTemp?
    

}

extension WeatherDayData : Codable {
    enum CodingKeys : String, CodingKey {
        case time = "dt"
        case windSpeed = "wind_speed"
        case weather = "weather"
        case dailyTemp = "temp"
    }
}

//extension WeatherDayData: JSONDecodable {
//
//    init(decoder: JSONDecoder) throws {
//        self.icon = try decoder.decode(key: "weather.icon")
//        self.windSpeed = try decoder.decode(key: "wind_speed")
//        self.temperatureMin = try decoder.decode(key: "temp.min")
//        self.temperatureMax = try decoder.decode(key: "temp.max")
//
//        let time: Double = try decoder.decode(key: "dt")
//        self.time = Date(timeIntervalSince1970: time)
//    }
//
//}
