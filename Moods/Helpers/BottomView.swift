//
//  BottomView.swift
//  Moods
//
//  Created by Anatoly Rosencrantz on 18/04/2020.
//  Copyright © 2020 Anatoly Rosencrantz. All rights reserved.
//

import SwiftUI

struct BottomView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var next: AnyView
    
    var body: some View {
        ZStack{
            Text("3/25")
                .font(.caption)
            
            HStack {
                Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                    Text("Назад")
                        .font(.footnote)
                }
                
                Spacer()
                
                NavigationLink(destination: next) {
                    Text("Следующий")
                        .font(.body)
                }
            }
            .buttonStyle(PlainButtonStyle())
            .padding(5)
            .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}

struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView(next: AnyView(EmptyView()))
    }
}
