//
//  Configuration.swift
//  Cloudy
//
//  Created by Bart Jacobs on 01/10/16.
//  Copyright © 2016 Cocoacasts. All rights reserved.
//

import Foundation

struct Defaults {

    static let Latitude: Double = 30.0444
    static let Longitude: Double = 31.2357

}

struct API {

    static let APIKey = ""
    static let BaseURL = "https://api.openweathermap.org/data/2.5/onecall?units=imperial&APPID="

    static var AuthenticatedBaseURL: URL {
        return URL(string: BaseURL + APIKey)!
    }
    
}
