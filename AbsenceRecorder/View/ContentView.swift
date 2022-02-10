//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 24/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var state : stateController
    @State private var currentDate : Date = Date()
    
    
    
    var body: some View {
        NavigationView{
            List(state.divisions, id : \.self.code){ division in
                NavigationLink(destination: AbsenceView(absence: division.createAbsenceOrGetExistingIfAvailable(for: currentDate))){
                    DivisionItem(division: division)
                }
                
               
            }
            .onAppear(perform: {
                state.SaveToFile()
            })
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
        ContentView()
            .environmentObject(stateController())
    }
}
