//  ContentView.swift
//  RGBColor

import SwiftUI

struct ContentView: View {
    
    @State private var red: Double = 0
    @State private var green: Double = 0
    @State private var blue: Double = 0
    
    var body: some View {
        VStack{
            Text("red:")
                .padding()
                .font(Font.custom("signPaiter", size: 25))
                .frame(width: 120.0, height: 40.0)
                .background(Color.white)
            ColorSlider(result: $red, color: .red)
            
            Text("Green:")
                .padding()
                .font(Font.custom("signPaiter", size: 25))
                .frame(width: 120.0, height: 40.0)
                .background(Color.white)
            ColorSlider(result: $green, color: .green)
            
            Text("Blue:")
                .padding()
                .font(Font.custom("signPaiter", size: 25))
                .frame(width: 120.0, height: 40.0)
                .background(Color.white)
            ColorSlider(result: $blue, color: .blue)
            
        }
        //I used the slider to change the background instead of a rectangular :)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: red, green: green, blue: blue))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct ColorSlider: View {
    
    @Binding var result: Double
    var color: Color
    
    var body: some View {
        Slider(value: $result, in: 0...1)
            .accentColor(color)
            .padding(.all)
    }
}
