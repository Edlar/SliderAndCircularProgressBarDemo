//
//  MainView.swift
//  SliderAndCircularProgressBarDemo
//
//  Created by Eduard Laryushkin on 28.11.2020.
//

import SwiftUI

struct MainView: View {
    private let redGlow = Color(red: 249/255, green: 9/255, blue: 44/255)
    private let greenGlow = Color(red: 138/255, green: 241/255, blue: 1/255)
    private let blueGlow = Color(red: 70/255, green: 254/255, blue: 255/255)
    
    private let widthAndHeight: CGFloat = 300
    private let spacing: CGFloat = 60
    
    @State var progress1: CGFloat = 1
    @State var progress2: CGFloat = 1
    @State var progress3: CGFloat = 1
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                CircularProgressBar(color: redGlow, widthAndHeight: widthAndHeight, progress: $progress1)
                CircularProgressBar(color: greenGlow, widthAndHeight: widthAndHeight - spacing, progress: $progress2)
                CircularProgressBar(color: blueGlow, widthAndHeight: widthAndHeight - (spacing * 2), progress: $progress3)
            }.padding()
            
            SliderProgressBar(color: redGlow, progress: $progress1)
            SliderProgressBar(color: greenGlow, progress: $progress2)
            SliderProgressBar(color: blueGlow, progress: $progress3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
