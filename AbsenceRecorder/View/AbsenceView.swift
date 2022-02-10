//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 31/01/2022.
//

import SwiftUI

struct AbsenceView: View {
    
    let absence: Absence
    
    var body: some View {
        List(absence.studentAbsences, id: \.self.student.firstName){ StudentAbsence in
            absenceitem(studentAbsence: StudentAbsence)
        }
        
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(absence: Absence.example)
    }
}

