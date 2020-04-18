//
//  Picket.swift
//  Moods
//
//  Created by Anatoly Rosencrantz on 18/04/2020.
//  Copyright © 2020 Anatoly Rosencrantz. All rights reserved.
//

import SwiftUI

struct Picket: View {
    var title: String
    var subtitle: String = ""
    var options: Array<String>
    @State var selected = Int.random(in: 0 ..< 5)
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            Text(subtitle)
                .font(.subheadline)
            
            Picker(selection: $selected, label: Spacer()) {
                ForEach(0 ..< options.count) {
                    Text("\($0)")
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text(options[selected])
                .lineLimit(3)
                .multilineTextAlignment(.center)
                .font(.footnote)
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(Color.black.opacity(0.3))
                .frame(height: 40)
                .frame(maxWidth: .infinity)
        }
    }
}
