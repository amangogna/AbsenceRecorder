//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 01/02/2022.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state : stateController
    
    var body: some View {
        Text("Statistics View: \(state.divisions[0].code)")
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
