//
//  StartQuiz.swift
//  Moods
//
//  Created by Anatoly Rosencrantz on 19/04/2020.
//  Copyright © 2020 Anatoly Rosencrantz. All rights reserved.
//

import SwiftUI

struct StarQuizView: View {
    @State var date = Date()
    @State var showDatePicker: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 30) {
                Text("Новая анкета")
                    .font(.largeTitle)
                
                Text("\(date, formatter: taskDateFormat)")
                .font(.footnote)
                .foregroundColor(.gray)
                .onTapGesture {
                    withAnimation {
                        self.showDatePicker.toggle()
                    }
                }
                
                if showDatePicker {
                    DatePicker(selection: $date, displayedComponents: .date) {
                        EmptyView()
                    }
                }
                
                Spacer()
                    .frame(height: 50) // hardcoded shit
                
                NavigationLink(destination: FiveStatesView()) {
                    Text("Начать") 
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}



struct StarQuizView_Previews: PreviewProvider {
    static var previews: some View {
        StarQuizView()
    }
}
