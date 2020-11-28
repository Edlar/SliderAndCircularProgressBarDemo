//
//  CircleProgress.swift
//  SliderAndCircularProgressBarDemo
//
//  Created by Eduard Laryushkin on 28.11.2020.
//

import SwiftUI

struct CircularProgressBar: View {
    let color: Color
    let widthAndHeight: CGFloat
    
    @Binding var progress: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray, lineWidth: 30)
                .frame(width: widthAndHeight, height: widthAndHeight, alignment: .center)
                .opacity(0.05)
            Circle()
                .trim(from: 0, to: progress)
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .foregroundColor(color)
                .frame(width: widthAndHeight, height: widthAndHeight, alignment: .center)
                .shadow(color: color, radius: 5)
                .rotationEffect(.degrees(-90))
        }.padding(20)
        .frame(height: widthAndHeight)
    }
}


struct CircleProgress_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressBar(color: .red, widthAndHeight: 300, progress: .constant(1))
    }
}
