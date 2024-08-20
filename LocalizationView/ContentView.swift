//
//  ContentView.swift
//  LocalizationView
//  Created by Sumit on 18/08/24.

import SwiftUI
import AppTrackingTransparency

 struct ContentView: View {
    
     var body: some View {
         ZStack {
              LocalizationFormation()
                 VStack {
                     Spacer()
                     Button("Select language") {
                         settingsOpener()
                     }
                     .buttonStyle(GrowingButton())
                     .padding(.bottom, 150)
                 }
         }
     }
     
     private func settingsOpener(){
         if let url = URL(string: UIApplication.openSettingsURLString) {
             if UIApplication.shared.canOpenURL(url) {
                 UIApplication.shared.open(url, options: [:], completionHandler: nil)
             }
         }
     }
 }

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
            .font(.system(size: 18, weight: .bold, design: .default))
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}


#Preview { ContentView() }
