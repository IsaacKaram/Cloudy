//
//  WeatherDayViewViewModel.swift
//  Cloudy
//
//  Created by Isaac Karam on 6/19/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import Foundation

struct WeatherDayViewViewModel {
    
    //MARK:-Properties
    let weatherDayData : WeatherDayData
    
    //MARK:-
    let dayFromatter = DateFormatter()
    
    //MARK:- Public Interface
    
    var day : String {
        dayFromatter.dateFormat = "EEEE"

        let dateAsString  = Date(timeIntervalSince1970: weatherDayData.time)
        return dayFromatter.string(from: dateAsString)
    }
    
    var date : String {
        
        dayFromatter.dateFormat = "MMMM d"
        let dateAsString = Date(timeIntervalSince1970: weatherDayData.time)
        
        return dayFromatter.string(from: dateAsString)
    }
    
    var temprature : String {
        guard let dailyTemp = weatherDayData.dailyTemp else {
            return ""
        }
        let min = formate(tempareture: dailyTemp.temperatureMin)
        let max = formate(tempareture: dailyTemp.temperatureMax)
        
        return "\(min) - \(max)"
    }
    
    var windSpeed : String{
        let windSpeed = weatherDayData.windSpeed
        
        switch UserDefaults.unitsNotation() {
        case .imperial:
            return String(format: "%.f MPH", windSpeed)
        case .metric:
            return String(format: "%.f KPH", windSpeed.toKPH())
        }
    }
    
    var icon : String{
        guard let weather = weatherDayData.weather else {
            return ""
        }
        
        return weather.count > 1 ? weather[0].icon : ""
    }
    
    //MARK:- Private Interface
    private func formate(tempareture : Double) -> String{
        switch UserDefaults.temperatureNotation() {
        case .celsius:
            return String(format: "%.0F C", tempareture.toCelcius())
        case .fahrenheit:
            return String(format: "%.0F F", tempareture)
        }
    }
}

extension WeatherDayViewViewModel : DayViewRepresentable {
    
    
}
