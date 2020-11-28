//
//  SliderProgressBar.swift
//  SliderAndCircularProgressBarSwiftUIDemo
//
//  Created by Eduard Laryushkin on 28.11.2020.
//

import SwiftUI

struct SliderProgressBar: View {
    let color: Color
    
    @Binding var progress: CGFloat
    
    var body: some View {
        HStack {
            Text("0%").foregroundColor(color)
            Slider(value: $progress)
                .accentColor(color)
                .background(color)
                .cornerRadius(25)
            Text("100%").foregroundColor(color)
        }.padding()
    }
}

struct SliderProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        SliderProgressBar(color: .red, progress: .constant(1))
    }
}
