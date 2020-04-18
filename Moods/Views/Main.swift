//
//  Main.swift
//  Moods
//
//  Created by Anatoly Rosencrantz on 18/04/2020.
//  Copyright © 2020 Anatoly Rosencrantz. All rights reserved.
//

import SwiftUI

struct Main: View {
    var body: some View {
        TabView {
            History()
            .tabItem {
                Image(systemName: "calendar")
                Text("Записи")
            }
            
            Text("¯\\_(ツ)_/¯")
            .tabItem {
                Image(systemName: "chart.bar.fill")
                Text("Статистика")
            }
            
            SettingsView()
            .tabItem {
                Image(systemName: "gear")
                Text("Настройки")
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
