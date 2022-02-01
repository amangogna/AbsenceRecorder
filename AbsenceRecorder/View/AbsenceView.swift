//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 31/01/2022.
//

import SwiftUI

struct AbsenceView: View {
    
    let division : division
    
    var body: some View {
        Text("Absence View - \(division.code)")
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(division: division.example[0])
    }
}
