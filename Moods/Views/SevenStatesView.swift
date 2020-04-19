//
//  ContentView.swift
//  Moods
//
//  Created by Anatoly Rosencrantz on 18/04/2020.
//  Copyright © 2020 Anatoly Rosencrantz. All rights reserved.
//

import SwiftUI

var skills = ["Не думала о навыках и не использовала",
"Думала о навыке, не хотела применять и не использовала",
"Думала о навыке, хотела применить, но не ипользовала",
"Старалась, но не смогла применить навыки",
"Старалась, смогла применить, но навыки не помогли",
"Старалась, смогла применить и навыки помогли",
"Использовала навыки автоматически, они не помогли",
"Использовала навыки автоматически и они помогли"]

struct SevenStatesView: View {
    var body: some View {
        Container(contents: AnyView(
            VStack(alignment: .leading, spacing: 30) {
                Text("Межличностная эффективность")
                    .font(.largeTitle)
                
                Picket(title: "DEAR", subtitle: "Объектная эффективность", options: skills)
                
                Picket(title: "MAN", subtitle: "Осознанность в достижении цели", options: skills)
                
                Picket(title: "GIVE", subtitle: "Эффективность самоуважения", options: skills)
                
                Picket(title: "FAST", subtitle: "Понятие и принятие чувств и эмоций", options: skills)
                
                Picket(title: "Стратегия изменения поведения", options: skills)
                
                BottomView(next: AnyView(EndQuizView()))
            }
        ))
    }
}



struct SevenStatesView_Previews: PreviewProvider {
    static var previews: some View {
        SevenStatesView()
    }
}
