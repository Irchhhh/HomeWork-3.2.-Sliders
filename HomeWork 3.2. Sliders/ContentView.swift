//
//  ContentView.swift
//  HomeWork 3.2. Sliders
//
//  Created by Ирина on 24.01.2022.
//

import SwiftUI

struct ContentView: View {

    @State private var redColorValue = 127.0
    @State private var greenColorValue = 127.0
    @State private var blueColorValue = 127.0
    
    var body: some View {
        ZStack {
            Color.clear
                .edgesIgnoringSafeArea(.all)
        ColorView(redColor: redColorValue / 255,
                greenColor: greenColorValue / 255,
                blueColor: blueColorValue / 255)
                .padding(.top, -280)
            Spacer()
            VStack(spacing: 5) {
                SliderView(value: $redColorValue)
                    .tint(.red)
                SliderView(value:$greenColorValue)
                    .tint(.green)
                SliderView(value: $blueColorValue)
                    .tint(.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding()
    }
}
