//
//  ContentView.swift
//  swiftUi_weather
//
//  Created by Anvesh Mishra on 03/03/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNight : Bool = false
    
    var weatherData : [WeatherModel] = [
        WeatherModel(dayLabel: "Tue", temperature: "32°", systemIcon: "cloud.sun.fill"),
        WeatherModel(dayLabel: "Wed", temperature: "20°", systemIcon: "cloud.sun.rain.fill"),
        WeatherModel(dayLabel: "Thu", temperature: "30°", systemIcon: "cloud.sun.fill"),
        WeatherModel(dayLabel: "Fri", temperature: "29°", systemIcon: "cloud.sun.fill"),
        WeatherModel(dayLabel: "Sat", temperature: "32°", systemIcon: "cloud.sun.bolt.fill")
    ];
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [isNight ? .gray : .blue, .white]),
                           startPoint: .top,
                           endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Greater Noida, India")
                    .font(.system(size: 28, weight: .medium, design: .monospaced))
                    .foregroundColor(.white)
                    .padding(.top,20)
                VStack{
                    Image(systemName: isNight ? "cloud.moon.fill" : "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 120)
                    Text("32°C")
                        .font(.system(size: 72, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }.padding(.bottom, 48)
                HStack{
                    ForEach(weatherData,id: \.self){ weather in
                        Spacer()
                        weather.toWeatherOfTheDay()
                        Spacer()
                    }
                }.padding(.horizontal, 4)
                Spacer()
                Button(
                    action: {
                        isNight.toggle()
                    },
                    label: {
                        Text("Change Day Time")
                            .font(.system(size: 20, weight: .bold, design: .monospaced))
                    }
                )
                .frame(width: 300, height: 50)
                .background(Color.white)
                .foregroundColor(isNight ?.gray : .blue)
                .cornerRadius(10)
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
