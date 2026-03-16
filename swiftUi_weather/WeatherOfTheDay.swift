//
//  DaysOfWeekView.swift
//  swiftUi_weather
//
//  Created by Anvesh Mishra on 07/03/26.
//

import SwiftUI

struct WeatherOfTheDay: View {
    let dayLabel : String;
    let temperature : String;
    let systemIcon : String;
    
    var body: some View {
        VStack{
            Text("\(dayLabel)")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: self.systemIcon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text(temperature)
                .font(.system(size: 32, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    WeatherOfTheDay(dayLabel: "Tue", temperature: "32", systemIcon: "cloud.sun.fill")
}
