//
//  WeatherService.swift
//  Weathery
//
//  Created by Yong Jun Cha on 2021/12/20.
//

import Foundation

struct Weather {
    let cityName : String
    let temperatuer : Double
    
    var temperatureString: String {
        return String(format: "%.0f", temperatuer)
    }
}

protocol WeatherServiceDelegate: AnyObject {
    func didFetchWeather(_ weatherService: WeatherService, weather: Weather)
}


struct WeatherService {
    
    var delegate : WeatherServiceDelegate?
    
    func fetchWeather(cityName: String) {
        let weather = Weather(cityName: "Hong Kong", temperatuer: 33)
        delegate?.didFetchWeather(self, weather: weather)
    }
}
