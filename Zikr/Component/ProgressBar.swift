//
//  ProgressBar.swift
//  Zikr
//
//  Created by Dicky Alamsyah on 29/04/22.
//

import SwiftUI

struct ProgressBar: View {
    
    @Binding var progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 10.0)
                .opacity(0.3)
                .foregroundColor(Color.red)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.red)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
            
            // Text(String(format: "%d", min(self.progress, 1)*100))
            // .font(.largeTitle)
            // .bold()
        }
    }
}
