//
//  BackgroundView.swift
//  SwifUI-Weather
//
//  Created by Natanael Urena on 10/26/21.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isDarkMode: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isDarkMode ? .black : .blue,
                                                   isDarkMode ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    @State static var isDarkMode = false
    
    static var previews: some View {
        BackgroundView(isDarkMode: $isDarkMode)
    }
}
