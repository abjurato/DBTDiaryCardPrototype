//
//  ContentView.swift
//  Moods
//
//  Created by Anatoly Rosencrantz on 18/04/2020.
//  Copyright © 2020 Anatoly Rosencrantz. All rights reserved.
//

import SwiftUI

var states = ["совсем нет", "почти нет", "слабое", "средний уровень", "высокий уровень", "нет сил сдерживаться"]

struct FiveStatesView: View {
    var body: some View {
        Container(contents: AnyView(
            VStack(alignment: .leading, spacing: 30) {
                Text("Прекращение терапии")
                    .font(.largeTitle)
                
                Picket(title: "Желание", options: states)
                
                Picket(title: "Действие", options: states)
                
                Spacer()
                    .frame(height: 50) // hardcoded shit
                
                BottomView(next: AnyView(SevenStatesView()))
            }
        ))
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FiveStatesView()
    }
}

