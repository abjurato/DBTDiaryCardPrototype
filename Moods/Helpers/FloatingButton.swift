//
//  SwiftUIView.swift
//  Moods
//
//  Created by Anatoly Rosencrantz on 18/04/2020.
//  Copyright © 2020 Anatoly Rosencrantz. All rights reserved.
//

import SwiftUI

class Shower: ObservableObject {
    @Published var show = false
}

struct FloatingButton: View {
    @EnvironmentObject var shower: Shower
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                Button(action: {
                    self.shower.show.toggle()
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color.blue)
                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
                        .padding()
                })
                .sheet(isPresented: $shower.show)
                {
                    StarQuizView().environmentObject(self.shower)
                }
            }
        }
    }
}
