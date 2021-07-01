//
//  DayViewRepresentable.swift
//  Cloudy
//
//  Created by Isaac Karam on 6/19/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import Foundation

protocol DayViewRepresentable{
    var day :String { get }
    var date : String { get }
    var temprature : String { get }
    var windSpeed : String { get }
    var icon : String { get }
}
