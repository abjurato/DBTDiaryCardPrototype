//
//  Final.swift
//  Moods
//
//  Created by Anatoly Rosencrantz on 18/04/2020.
//  Copyright © 2020 Anatoly Rosencrantz. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @State var notifications: Bool = true
    var notificationMode = ["iCloud", "Dropbox"]
    @State private var selectedMode = 0
    
    var body: some View {
        Form {
            Section {
                Toggle("Напоминания", isOn: $notifications)
                Picker(selection: $selectedMode, label: Text("9:00 PM, ежедневно")) {
                    Text("")
                }
            }
            
            Section(footer:
                Text("Приложение может периодически сохранять бэкапы в облако"))
            {
                Toggle("Touch ID", isOn: $notifications)
                Toggle("PIN", isOn: $notifications)
            }
            
            Section(footer:
                Text("Приложение может периодически сохранять бэкапы в ваше облако")
            ) {
                Picker(selection: $selectedMode, label: Text("Backup")) {
                    ForEach(0..<notificationMode.count) {
                        Text(self.notificationMode[$0])
                    }
                }
            }
        }
    }
}

struct Final_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
