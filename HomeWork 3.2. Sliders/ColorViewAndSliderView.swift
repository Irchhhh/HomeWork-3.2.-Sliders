//
//  ColorViewAndSliderView.swift
//  HomeWork 3.2. Sliders
//
//  Created by Ирина on 24.01.2022.
//

import SwiftUI

//MARK: - ColorView
struct ColorView: View {
    var redColor: Double
    var greenColor: Double
    var blueColor: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .padding(9.0)
            .frame(height: 170)
            .foregroundColor(Color(
                red: redColor,
                green: greenColor,
                blue: blueColor
        ))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redColor: 0.0, greenColor: 0.0, blueColor: 0.0)
    }
}

//MARK: - SliderView
struct SliderView: View {
    @Binding var value: Double
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255, step: 1)
        }
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(0.0))
    }
}


