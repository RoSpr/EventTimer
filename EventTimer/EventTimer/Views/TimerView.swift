//
//  TimerView.swift
//  EventTimer
//
//  Created by Rodion on 06.09.2025.
//

import SwiftUI
import SwiftData

struct TimerView: View {
    var body: some View {
        VStack {
            Text("Upcoming Event")
                .fontWeight(.semibold)
                .font(.title2)
                .padding(.top, 20)
                .padding([.bottom, .leading, .trailing], 10)
            Text("\(Date.now.formatted(date: .long, time: .shortened))")
                .lineLimit(2)
                .multilineTextAlignment(.center)
            
            Spacer()
        }
    }
}

#Preview {
    TimerView()
}
