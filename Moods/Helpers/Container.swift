//
//  Container.swift
//  Moods
//
//  Created by Anatoly Rosencrantz on 18/04/2020.
//  Copyright © 2020 Anatoly Rosencrantz. All rights reserved.
//

import SwiftUI

struct Container: View {
    var contents: AnyView
    
    var body: some View {
        ScrollView {
            contents
            .frame(maxWidth: .infinity)
        }
        .padding()
//        .background(
//            LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]),
//                           startPoint: .topLeading,
//                           endPoint: .bottomTrailing)
//        )
//        .foregroundColor(.white)
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
        .navigationBarBackButtonHidden(true)
    }
}
