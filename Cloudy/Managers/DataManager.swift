//
//  DataManager.swift
//  Cloudy
//
//  Created by Bart Jacobs on 01/10/16.
//  Copyright © 2016 Cocoacasts. All rights reserved.
//

import Foundation

enum DataManagerError: Error {

    case unknown
    case failedRequest
    case invalidResponse

}

final class DataManager {

    typealias WeatherDataCompletion = (WeatherData?, DataManagerError?) -> ()

    // MARK: - Properties

    private let baseURL: URL

    // MARK: - Initialization

    init(baseURL: URL) {
        self.baseURL = baseURL
    }

    // MARK: - Requesting Data

    func weatherDataForLocation(latitude: Double, longitude: Double, completion: @escaping WeatherDataCompletion) {
        // Create URL
        let URl = URL(string : "\(baseURL)&lat=\(latitude)&lon=\(longitude)")!

        // Create Data Task
        URLSession.shared.dataTask(with: URl) { (data, response, error) in
            DispatchQueue.main.async {
                self.didFetchWeatherData(data: data, response: response, error: error, completion: completion)
            }
        }.resume()
    }

    // MARK: - Helper Methods

    private func didFetchWeatherData(data: Data?, response: URLResponse?, error: Error?, completion: WeatherDataCompletion) {
        if let _ = error {
            completion(nil, .failedRequest)

        } else if let data = data, let response = response as? HTTPURLResponse {
            if response.statusCode == 200 {
                do {
                    // Decode JSON
                    let decoder = JSONDecoder()
                    let weatherData = try decoder.decode(WeatherData.self, from: data)

                    // Invoke Completion Handler
                    completion(weatherData, nil)

                } catch(let err) {
                    // Invoke Completion Handler
                    print(err.localizedDescription)
                    completion(nil, .invalidResponse)
                }

            } else {
                completion(nil, .failedRequest)
            }

        } else {
            completion(nil, .unknown)
        }
    }

}
