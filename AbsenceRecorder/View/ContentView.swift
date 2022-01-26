//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 24/01/2022.
//

import SwiftUI

struct ContentView: View {
    var divisions : [division]
    @State private var currentDate : Date = Date()
    
    
    
    var body: some View {
        NavigationView{
            List(divisions, id : \.self.code){ division in
                DivisionItem(division: division)
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: { currentDate = currentDate.previousDay()}){
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: { currentDate = currentDate.nextDay()}){
                        Image(systemName: "arrow.forward")
                    }
                }
            }
           

        }
                
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(divisions: division.example)
    }
}
