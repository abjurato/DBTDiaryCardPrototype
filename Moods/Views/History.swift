//
//  History.swift
//  Moods
//
//  Created by Anatoly Rosencrantz on 18/04/2020.
//  Copyright © 2020 Anatoly Rosencrantz. All rights reserved.
//

import SwiftUI

struct Week: Identifiable {
    var id: String
    var cards: [Card]
}

struct Card: Identifiable {
    var id: String
    var date: Date
}

var cards1: [Card] = [.init(id: "1", date: Calendar.current.date(byAdding: .day, value: -4, to: Date())!),
                     .init(id: "2", date: Calendar.current.date(byAdding: .day, value: -2, to: Date())!),
                     .init(id: "3", date: Calendar.current.date(byAdding: .day, value: -1, to: Date())!)]

var cards2: [Card] = [.init(id: "1", date: Calendar.current.date(byAdding: .day, value: -14, to: Date())!),
                      .init(id: "2", date: Calendar.current.date(byAdding: .day, value: -12, to: Date())!),
                      .init(id: "3", date: Calendar.current.date(byAdding: .day, value: -11, to: Date())!)]

struct History: View {
    var weeks: [Week] = [
        .init(id: "1", cards: cards1),
        .init(id: "2", cards: cards2)
    ]
    
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var body: some View {
        ZStack {
            List {
                ForEach(self.weeks) { week in
                    Section(header:
                        HStack {
                            Text("\(week.cards.first!.date, formatter: Self.taskDateFormat) - \(week.cards.last!.date, formatter: Self.taskDateFormat)")
                            
                            Spacer()
                            
                            Image(systemName: "square.and.arrow.up")
                        }
                    ) {
                        ForEach(week.cards) { card in
                            HStack {
                                Image(systemName: "rectangle.and.paperclip")
                                Text("\(card.date, formatter: Self.taskDateFormat)")
                            }
                        }
                    }
                }
            }
            
            FloatingButton()
            
        }
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}

