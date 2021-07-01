//
//  WeekViewViewModel.swift
//  Cloudy
//
//  Created by Isaac Karam on 6/12/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import Foundation

struct WeekViewViewModel{
    //MARK:- Properties
    let weatherData: [WeatherDayData]
    
    //MARK :-
    
    var numberOfSections : Int {
        1
    }
    
    var numberOfDays : Int {
        return weatherData.count
    }
    
    //MARK :- Public Interface
    func viewModel(for index : Int) -> WeatherDayViewViewModel {
        return WeatherDayViewViewModel(weatherDayData: weatherData[index])
    }
    
}
