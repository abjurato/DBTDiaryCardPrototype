//
//  EndQuizView.swift
//  Moods
//
//  Created by Anatoly Rosencrantz on 19/04/2020.
//  Copyright © 2020 Anatoly Rosencrantz. All rights reserved.
//

import SwiftUI

struct EndQuizView: View {
    @EnvironmentObject var shower: Shower

    @State var comment = "Введите ваши комментарии"
    @State var date = Date()
    @State var showDatePicker: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 30) {
                TextView(text: $comment)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(height: 200)
                    .cornerRadius(5.0)
                    .padding()
                
                Spacer()
                
                Button(action: { self.shower.show.toggle() }) {
                    Text("Сохранить")
                        .font(.title)
                }
                .buttonStyle(PlainButtonStyle())
                
                Button(action: { }) {
                    Image(systemName: "square.and.arrow.up")
                }
                
                Spacer()
                Spacer()
            }
        }
    }
}



struct EndQuizView_Previews: PreviewProvider {
    static var previews: some View {
        EndQuizView()
    }
}

