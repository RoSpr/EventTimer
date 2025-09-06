//
//  CountdownCircle.swift
//  EventTimer
//
//  Created by Rodion on 06.09.2025.
//

import SwiftUI

struct CountdownCircle: View {
    var progress: Double
    var size: CGFloat = 250
    var lineWidth: CGFloat = 25
    var trackColor: Color = .gray.opacity(0.2)
    var ringColor: Color = .blue.opacity(0.75)
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(trackColor, lineWidth: lineWidth)
            
            Circle()
                .trim(from: 0, to: max(0, min(1, progress)))
                .stroke(ringColor,
                        style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                .rotationEffect(.degrees(-90))
        }
        .frame(width: size, height: size)
        .contentShape(Rectangle())
    }
}

#Preview {
    CountdownCircle(progress: 0.4, size: 250, lineWidth: 25, trackColor: .gray.opacity(0.2), ringColor: .blue.opacity(0.9))
}
