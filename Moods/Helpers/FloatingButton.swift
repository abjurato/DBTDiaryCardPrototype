//
//  SwiftUIView.swift
//  Moods
//
//  Created by Anatoly Rosencrantz on 18/04/2020.
//  Copyright © 2020 Anatoly Rosencrantz. All rights reserved.
//

import SwiftUI

struct FloatingButton: View {
    @State private var showModal = false
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                Button(action: {
                    self.showModal.toggle()
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color.blue)
                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
                        .padding()
                })
                    .sheet(isPresented: $showModal) { () -> AnyView in
                        if Bool.random() {
                            return AnyView( SevenStatesView() )
                        } else {
                            return AnyView( FiveStatesView() )
                        }
                }
            }
        }
    }
}
