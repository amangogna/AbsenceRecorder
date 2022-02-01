//
//  rootTabView.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 31/01/2022.
//

import SwiftUI

struct rootTabView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem{
                    Image(systemName: "chart.pie.fill")
                    Text("statistics")
                }
            
           
            
           
            
            
        }
    }
}

struct rootTabView_Previews: PreviewProvider {
    static var previews: some View {
        rootTabView()
    }
}
