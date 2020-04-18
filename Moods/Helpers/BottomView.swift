//
//  BottomView.swift
//  Moods
//
//  Created by Anatoly Rosencrantz on 18/04/2020.
//  Copyright © 2020 Anatoly Rosencrantz. All rights reserved.
//

import SwiftUI

struct BottomView: View {
    var body: some View {
        ZStack{
            Text("3/25")
                .font(.caption)
            
            HStack {
                Text("Назад")
                    .font(.footnote)
                
                Spacer()
                
                Text("Следующий")
                    .font(.body)
            }
            .padding(5)
            .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}
