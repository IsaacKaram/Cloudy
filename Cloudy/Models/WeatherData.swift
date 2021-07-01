//
//  WeatherData.swift
//  Cloudy
//
//  Created by Bart Jacobs on 01/10/16.
//  Copyright © 2016 Cocoacasts. All rights reserved.
//

import Foundation

struct WeatherData {
    let lat: Double
    let long: Double
    let dailyData: [WeatherDayData]
    let currentDay : CurrentDay?
}

extension WeatherData : Codable {
    enum  CodingKeys : String, CodingKey {
        case lat = "lat"
        case long = "lon"
        case dailyData = "daily"
        case currentDay = "current"
    }
}

//extension WeatherData: JSONDecodable {
//
//    init(decoder: JSONDecoder) throws {
//        self.lat = try decoder.decode(key: "lat")
//        self.long = try decoder.decode(key: "lon")
//        self.dailyData = try decoder.decode(key: "daily.data")
//
//        self.icon = try decoder.decode(key: "current.weather.icon")
//        self.summary = try decoder.decode(key: "current.weather.description")
//        self.windSpeed = try decoder.decode(key: "current.wind_speed")
//        self.temperature = try decoder.decode(key: "current.temp")
//
//        let time: Double = try decoder.decode(key: "current.dt")
//        self.time = Date(timeIntervalSince1970: time)
//    }
//
//}
