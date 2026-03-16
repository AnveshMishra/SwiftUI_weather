//
//  WeatherModel.swift
//  swiftUi_weather
//
//  Created by Anvesh Mishra on 16/03/26.
//

struct WeatherModel : Hashable{
    let dayLabel : String;
    let temperature : String;
    let systemIcon : String;
    
    
    func toWeatherOfTheDay() -> WeatherOfTheDay{
        WeatherOfTheDay(dayLabel: self.dayLabel,
                        temperature: self.temperature,
                        systemIcon: self.systemIcon
        );
    }
}
