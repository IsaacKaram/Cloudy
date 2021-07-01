//
//  DayViewViewModel.swift
//  Cloudy
//
//  Created by Isaac Karam on 5/18/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import Foundation

struct DayViewViewModel {
    //MARK: properties
    let weatherData : WeatherData
    let dateFormatter = DateFormatter()
    
    //MARK: -
    var date : String{
        dateFormatter.dateFormat = "EEE, MMMM d"
        //return  ""
        let dateAsString  = Date(timeIntervalSince1970: weatherData.currentDay!.time)
        return dateFormatter.string(from: dateAsString)
    }
    
    var time : String{
        dateFormatter.dateFormat = UserDefaults.timeNotation().timeFormate
//        return ""
        let dateAsString  = Date(timeIntervalSince1970: weatherData.currentDay!.time)
        return dateFormatter.string(from: dateAsString)
    }
    
    var summary : String {
        return (weatherData.currentDay?.weather[0].summary)!
    }
    
    var temperature : String {
        guard let temperature = weatherData.currentDay?.temperature else {
            return "Unknown"
        }
        
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit:
            return String(format: "%.1f  F", temperature)
        case .celsius:
            return String(format: "%.1f  C", temperature.toCelcius())
        }
    }
    
    var windSpeed : String {
        guard let windSpeed = weatherData.currentDay?.windSpeed else {
            return "Unknown"
        }
        
        switch UserDefaults.unitsNotation(){
        case .imperial:
            return String(format: "%.f MPH", windSpeed)
        case .metric:
            return String(format: "%.f KPH", windSpeed.toKPH())
        }
    }
    
    var iconName : String {
        return (weatherData.currentDay?.weather[0].icon)!
    }
}
