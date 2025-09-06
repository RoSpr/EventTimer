//
//  CountdownEvent.swift
//  EventTimer
//
//  Created by Rodion on 06.09.2025.
//

import Foundation
import SwiftData

@Model
final class CountdownEvent {
    @Attribute(.unique) var id: UUID
    var title: String
    var targetedAt: Date
    var createdAt: Date
    
    init(title: String, targetedAt: Date, createdAt: Date = .now) {
        self.id = UUID()
        self.title = title
        self.targetedAt = targetedAt
        self.createdAt = createdAt
    }
    
    static var sample: CountdownEvent {
        .init(title: "Event example", targetedAt: Calendar.current.date(byAdding: .day, value: 2, to: .now)!)
    }
}
