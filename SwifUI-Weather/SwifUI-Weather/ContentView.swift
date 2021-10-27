//
//  ContentView.swift
//  SwifUI-Weather
//
//  Created by Natanael Urena on 10/26/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isDarkMode = false
    
    var body: some View {
        ZStack {
            BackgroundView(isDarkMode: $isDarkMode)
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherView(imageName: isDarkMode ? "moon.stars.fill" : "cloud.sun.fill",
                                temperature: 78)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                               imageName: "cloud.sun.fill",
                               temperature: 74)
                    
                    WeatherDayView(dayOfWeek: "WED",
                               imageName: "sun.max.fill",
                               temperature: 88)
                    
                    WeatherDayView(dayOfWeek: "THU",
                               imageName: "wind.snow",
                               temperature: 55)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                               imageName: "sunset.fill",
                               temperature: 60)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                               imageName: "snow",
                               temperature: -5)
                }
                Spacer()
                
                Button {
                    isDarkMode.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: self.isDarkMode ? .gray : .blue,
                                  backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
